package com.andymstone.compasslib;

public class i {
    public static int a(int i) {
        if (i == 2) {
            return u.sensor_calibration_warning;
        }
        return i == 1 ? u.abnormal_magnetic_field_warning : u.abnormal_acceleration_warning;
    }

    public static int b(int i) {
        if (i == 2) {
            return u.sensor_calibration_warning_title;
        }
        return i == 1 ? u.abnormal_magnetic_field_warning_title : u.abnormal_acceleration_warning_title;
    }
}