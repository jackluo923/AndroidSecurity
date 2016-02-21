package com.heyzap.house.model;

import com.heyzap.house.Manager;
import com.heyzap.house.model.AdModel.ModelPostFetchCompleteListener;
import com.heyzap.http.FileAsyncHttpResponseHandler;
import com.heyzap.internal.Logger;
import java.io.File;
import org.apache.http.Header;

final class h extends FileAsyncHttpResponseHandler {
    final /* synthetic */ VideoModel a;
    final /* synthetic */ ModelPostFetchCompleteListener b;

    h(File file, VideoModel videoModel, ModelPostFetchCompleteListener modelPostFetchCompleteListener) {
        this.a = videoModel;
        this.b = modelPostFetchCompleteListener;
        super(file);
    }

    public void onCancel() {
        Logger.format("(DOWNLOAD CANCELLED) %s", new Object[]{this.a});
        Throwable th = new Throwable("cancelled");
        if (this.b != null) {
            this.b.onComplete(this.a, th);
        }
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, File file) {
        if (th.getMessage().equals("No space left on device")) {
            Logger.log("Dumping caches.");
            try {
                Manager.getInstance().clearAndCreateFileCache();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (file.exists()) {
            file.delete();
        }
        Logger.format("(DOWNLOAD ERROR) Error: %s %s", new Object[]{th.toString(), this.a});
        if (this.b != null) {
            this.b.onComplete(null, th);
        }
    }

    public void onStart() {
        Logger.format("(DOWNLOADING) %s", new Object[]{this.a});
    }

    public void onSuccess(int i, Header[] headerArr, File file) {
        if (file.exists()) {
            Logger.format("(CACHED) %s", new Object[]{this.a});
            this.a.setCachePath(file.getAbsolutePath());
            this.a.setFileCached(Boolean.valueOf(true));
            this.a.setIsReady(Boolean.valueOf(true));
            if (this.b != null) {
                this.b.onComplete(this.a, null);
            }
        } else {
            onFailure(i, headerArr, new Throwable("Downloaded video does not exist on filesystem."), file);
        }
    }
}