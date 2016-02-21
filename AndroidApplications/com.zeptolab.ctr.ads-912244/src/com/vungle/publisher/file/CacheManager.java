package com.vungle.publisher.file;

import com.vungle.log.Logger;
import com.vungle.publisher.ba;
import com.vungle.publisher.inject.annotations.AdTempDirectory;
import com.vungle.publisher.inject.annotations.OldAdTempDirectory;
import java.io.File;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

@Singleton
public class CacheManager {
    @Inject
    @AdTempDirectory
    public Provider a;
    @OldAdTempDirectory
    @Inject
    public Provider b;

    CacheManager() {
    }

    public static void a(String str) {
        try {
            if (new File(str).exists()) {
                ba.a(str);
            } else {
                Logger.v(Logger.FILE_TAG, new StringBuilder("ad temp directory does not exist ").append(str).toString());
            }
        } catch (Exception e) {
            Logger.d(Logger.FILE_TAG, new StringBuilder("error deleting ad temp directory ").append(str).toString());
        }
    }
}