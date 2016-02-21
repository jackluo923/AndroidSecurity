package com.zeptolab.ctr.scorer;

import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.CtrPreferences;
import com.zeptolab.ctr.scorer.CtrScorer.Stats;

public class ScoreMigrator {
    protected String migratedKey;

    protected class Extractor extends AsyncTask {
        protected Extractor() {
        }

        protected Void doInBackground(CtrScorer... ctrScorerArr) {
            try {
                CtrScorer ctrScorer = ctrScorerArr[0];
                CtrScorer ctrScorer2 = ctrScorerArr[1];
                int i = LocationStatusCodes.GEOFENCE_NOT_AVAILABLE;
                while (!ctrScorer.isReady()) {
                    Log.i("EXTRACTOR", "SEED SLEEP");
                    Thread.sleep((long) i);
                    i *= 2;
                }
                Stats stats = ctrScorer.getStats();
                if (stats == null || stats.isCheated()) {
                    Log.i("EXTRACTOR", "CHEATS");
                    return null;
                } else {
                    while (!ctrScorer2.isReady()) {
                        Log.i("EXTRACTOR", "TARGET SLEEP");
                        Thread.sleep((long) i);
                        i *= 2;
                    }
                    ctrScorer2.appendStats(stats);
                    CtrPreferences.getInstance().setBooleanforKey(ScoreMigrator.this.migratedKey, true, true);
                    return null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public ScoreMigrator(CtrScorer ctrScorer, CtrScorer ctrScorer2) {
        this.migratedKey = "migrated_" + ctrScorer.getName() + "_" + ctrScorer2.getName();
        CtrPreferences instance = CtrPreferences.getInstance();
        if (instance.isFreshUpdateLaunch() && !instance.getBooleanForKey(this.migratedKey)) {
            new Extractor().execute(new CtrScorer[]{ctrScorer, ctrScorer2});
        }
    }
}