package com.jirbo.adcolony;

import android.os.Environment;
import android.os.StatFs;
import java.io.File;

public class ADCStorage {
    String adcolony_path;
    ADCController controller;
    File data_file;
    String data_path;
    File media_file;
    String media_path;

    ADCStorage(ADCController aDCController) {
        this.controller = aDCController;
    }

    double available_space(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return (double) (((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize()));
        } catch (RuntimeException e) {
            return 0.0d;
        }
    }

    void configure() {
        ADCLog.dev.println((Object)"Configuring storage");
        boolean z = 1;
        if (external_storage_path() != null && available_space(external_storage_path()) > available_space(internal_storage_path()) + 1048576.0d && available_space(internal_storage_path()) < 3.145728E7d) {
            z = 0;
        }
        if (i != 0) {
            ADCLog.debug.println((Object)"Using internal storage:");
            this.adcolony_path = internal_storage_path() + "/adc/";
        } else {
            this.adcolony_path = external_storage_path() + "/.adc2/" + ADCUtil.package_name() + "/";
            ADCLog.debug.println((Object)"Using external storage:");
        }
        this.media_path = this.adcolony_path + "media/";
        ADCLog.dev.println(this.media_path);
        this.media_file = new File(this.media_path);
        if (!this.media_file.isDirectory()) {
            this.media_file.delete();
            this.media_file.mkdirs();
        }
        if (!this.media_file.isDirectory()) {
            ADC.on_fatal_error("Cannot create media folder.");
        } else if (available_space(this.media_path) < 2.097152E7d) {
            ADC.on_fatal_error("Not enough space to store temporary files (" + available_space(this.media_path) + " bytes available).");
        } else {
            this.data_path = internal_storage_path() + "/adc/data/";
            if (log_level == 0) {
                this.data_path = this.adcolony_path + "data/";
            }
            ADCLog.dev.print("Internal data path: ").println(this.data_path);
            this.data_file = new File(this.data_path);
            if (!this.data_file.isDirectory()) {
                this.data_file.delete();
            }
            this.data_file.mkdirs();
        }
    }

    String external_storage_path() {
        String str = "mounted";
        return str.equals(Environment.getExternalStorageState()) ? Environment.getExternalStorageDirectory().getAbsolutePath() : null;
    }

    String internal_storage_path() {
        return AdColony.activity().getFilesDir().getAbsolutePath();
    }

    void validate_storage_paths() {
        if (this.media_file != null && this.data_file != null) {
            if (!this.media_file.isDirectory()) {
                this.media_file.delete();
            }
            if (!this.data_file.isDirectory()) {
                this.data_file.delete();
            }
            this.media_file.mkdirs();
            this.data_file.mkdirs();
        }
    }
}