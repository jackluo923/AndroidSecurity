package com.heyzap.house.handler;

import android.content.Context;
import com.heyzap.house.impl.AbstractActivity;
import com.heyzap.house.impl.AbstractFetchHandler;
import com.heyzap.house.impl.AbstractFetchHandler.AlreadyInstalledException;
import com.heyzap.house.model.NativeModel;
import com.heyzap.house.request.FetchRequest;
import com.heyzap.internal.Utils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.monetization.internal.NativeAdResponse;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class NativeFetchHandler extends AbstractFetchHandler {
    public NativeFetchHandler(Context context, FetchRequest fetchRequest) {
        super(context, fetchRequest);
    }

    public List onFetchSuccess(JSONObject jSONObject) {
        int i = 0;
        if (jSONObject.has(NativeAdResponse.KEY_ADS)) {
            JSONArray jSONArray = jSONObject.getJSONArray(NativeAdResponse.KEY_ADS);
            List arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i2 = 0;
            while (i < jSONArray.length()) {
                try {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.has("promoted_game_package") && !jSONObject2.isNull("promoted_game_package") && !jSONObject2.getString("promoted_game_package").equals(AdTrackerConstants.BLANK)) {
                        if (Utils.packageIsInstalled(jSONObject2.getString("promoted_game_package"), getContext())) {
                            throw new AlreadyInstalledException(this, jSONObject.optString(AbstractActivity.ACTIVITY_INTENT_IMPRESSION_KEY));
                        }
                        NativeModel nativeModel = new NativeModel(jSONObject2);
                        nativeModel.setTag(getFetchRequest().getTag());
                        nativeModel.setAdUnit(getFetchRequest().getAdUnit());
                        nativeModel.doPostFetchActions(getContext(), null);
                        arrayList.add(nativeModel);
                        i2++;
                        i++;
                    }
                    throw new Exception("bad response");
                } catch (AlreadyInstalledException e) {
                    arrayList2.add(e.getMessage());
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (arrayList2.size() > 0) {
                AttributionHandler.getInstance().didInstall(getContext(), arrayList2, Boolean.valueOf(true));
            }
            if (i2 != 0) {
                return arrayList;
            }
            throw new Exception("no_fill");
        } else {
            throw new Exception("bad_response");
        }
    }
}