package com.heyzap.house.handler;

import android.content.Context;
import com.heyzap.house.impl.AbstractActivity;
import com.heyzap.house.impl.AbstractFetchHandler;
import com.heyzap.house.impl.AbstractFetchHandler.AlreadyInstalledException;
import com.heyzap.house.model.AdModel;
import com.heyzap.house.model.InterstitialModel;
import com.heyzap.house.model.VideoModel;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.internal.Utils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class InterstitialFetchHandler extends AbstractFetchHandler {
    public InterstitialFetchHandler(Context context, FetchRequest fetchRequest) {
        super(context, fetchRequest);
    }

    public List onFetchSuccess(JSONObject jSONObject) {
        if (!jSONObject.has(AbstractActivity.ACTIVITY_INTENT_IMPRESSION_KEY) || jSONObject.isNull(AbstractActivity.ACTIVITY_INTENT_IMPRESSION_KEY)) {
            throw new Exception("no_fill");
        } else if (!jSONObject.has("promoted_game_package") || jSONObject.isNull("promoted_game_package") || jSONObject.getString("promoted_game_package").equals(AdTrackerConstants.BLANK)) {
            throw new Exception("bad_response");
        } else if (Utils.packageIsInstalled(jSONObject.getString("promoted_game_package"), getContext())) {
            throw new AlreadyInstalledException(this, jSONObject.optString(AbstractActivity.ACTIVITY_INTENT_IMPRESSION_KEY));
        } else {
            AdModel videoModel;
            videoModel = jSONObject.optString("creative_type", InterstitialModel.FORMAT).equals(VideoModel.FORMAT) ? new VideoModel(jSONObject) : new InterstitialModel(jSONObject);
            videoModel.setTag(getFetchRequest().getTag());
            videoModel.setAdUnit(getFetchRequest().getAdUnit());
            videoModel.doPostFetchActions(getContext(), new j(this));
            List arrayList = new ArrayList();
            arrayList.add(videoModel);
            return arrayList;
        }
    }

    public Boolean shouldFireCallbackOnSuccess() {
        return (getFetchRequest().getAdUnit() == 2 || getFetchRequest().getAdUnit() == 3) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }
}