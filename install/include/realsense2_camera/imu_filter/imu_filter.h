#ifndef IMU_FILTER_MADWICK_IMU_FILTER_H
#define IMU_FILTER_MADWICK_IMU_FILTER_H

#include <iostream>
#include <cmath>

class ImuFilter
{
  public:

    ImuFilter();
    virtual ~ImuFilter();

  private:
    // **** paramaters
    double gain_;    // algorithm gain
    double zeta_;    // gyro drift bias gain

    // **** state variables
    double q0, q1, q2, q3;  // quaternion
    float w_bx_, w_by_, w_bz_; //

public:
    void setAlgorithmGain(double gain)
    {
        gain_ = gain;
    }

    void setDriftBiasGain(double zeta)
    {
        zeta_ = zeta;
    }

    void getOrientation(double& q0, double& q1, double& q2, double& q3)
    {
        q0 = this->q0;
        q1 = this->q1;
        q2 = this->q2;
        q3 = this->q3;

        // perform precise normalization of the output, using 1/sqrt()
        // instead of the fast invSqrt() approximation. Without this,
        // TF2 complains that the quaternion is not normalized.
        double recipNorm = 1 / sqrt(q0 * q0 + q1 * q1 + q2 * q2 + q3 * q3);
        q0 *= recipNorm;
        q1 *= recipNorm;
        q2 *= recipNorm;
        q3 *= recipNorm;
    }

    void setOrientation(double q0, double q1, double q2, double q3)
    {
        this->q0 = q0;
        this->q1 = q1;
        this->q2 = q2;
        this->q3 = q3;

        w_bx_ = 0;
        w_by_ = 0;
        w_bz_ = 0;
    }

    void madgwickAHRSupdateIMU(float gx, float gy, float gz,
                               float ax, float ay, float az,
                               float dt);

    void getGravity(float& rx, float& ry, float& rz,
                    float gravity = 9.80665);
};

#endif // IMU_FILTER_IMU_MADWICK_FILTER_H
