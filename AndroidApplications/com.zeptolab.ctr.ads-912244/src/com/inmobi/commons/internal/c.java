package com.inmobi.commons.internal;

import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.icedatacollector.ThinICEListener;
import java.util.List;

final class c implements ThinICEListener {
    c() {
    }

    public void onSamplingTerminated(List list) {
        ThinICE.b(list);
        IceDataCollector.stop();
        ActivityRecognitionSampler.stop();
    }
}