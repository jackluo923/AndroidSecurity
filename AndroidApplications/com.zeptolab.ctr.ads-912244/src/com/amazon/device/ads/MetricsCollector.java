package com.amazon.device.ads;

import com.amazon.device.ads.AdProperties.AdType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Vector;

class MetricsCollector {
    protected Vector a;
    private String b;

    static class CompositeMetricsCollector extends MetricsCollector {
        private final ArrayList b;

        public CompositeMetricsCollector(ArrayList arrayList) {
            this.b = arrayList;
        }

        public void incrementMetric(MetricType metricType) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((MetricsCollector) it.next()).incrementMetric(metricType);
            }
        }

        public void publishMetricInMilliseconds(MetricType metricType, long j) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((MetricsCollector) it.next()).publishMetricInMilliseconds(metricType, j);
            }
        }

        public void publishMetricInMillisecondsFromNanoseconds(MetricType metricType, long j) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((MetricsCollector) it.next()).publishMetricInMillisecondsFromNanoseconds(metricType, j);
            }
        }

        public void setMetricString(MetricType metricType, String str) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((MetricsCollector) it.next()).setMetricString(metricType, str);
            }
        }

        public void startMetric(MetricType metricType) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((MetricsCollector) it.next()).startMetric(metricType);
            }
        }

        public void startMetricInMillisecondsFromNanoseconds(MetricType metricType, long j) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((MetricsCollector) it.next()).startMetricInMillisecondsFromNanoseconds(metricType, j);
            }
        }

        public void stopMetric(MetricType metricType) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((MetricsCollector) it.next()).stopMetric(metricType);
            }
        }

        public void stopMetricInMillisecondsFromNanoseconds(MetricType metricType, long j) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((MetricsCollector) it.next()).stopMetricInMillisecondsFromNanoseconds(metricType, j);
            }
        }
    }

    static class MetricHit {
        public final MetricType metric;

        public MetricHit(MetricType metricType) {
            this.metric = metricType;
        }
    }

    static class MetricHitIncrement extends MetricHit {
        public final int increment;

        public MetricHitIncrement(MetricType metricType, int i) {
            super(metricType);
            this.increment = i;
        }
    }

    static class MetricHitStartTime extends MetricHit {
        public final long startTime;

        public MetricHitStartTime(MetricType metricType, long j) {
            super(metricType);
            this.startTime = j;
        }
    }

    static class MetricHitStopTime extends MetricHit {
        public final long stopTime;

        public MetricHitStopTime(MetricType metricType, long j) {
            super(metricType);
            this.stopTime = j;
        }
    }

    static class MetricHitString extends MetricHit {
        public final String text;

        public MetricHitString(MetricType metricType, String str) {
            super(metricType);
            this.text = str;
        }
    }

    static class MetricHitTotalTime extends MetricHit {
        public final long totalTime;

        public MetricHitTotalTime(MetricType metricType, long j) {
            super(metricType);
            this.totalTime = j;
        }
    }

    public MetricsCollector() {
        this.a = new Vector(60);
    }

    public String getAdTypeMetricTag() {
        return this.b;
    }

    public Vector getMetricHits() {
        return this.a;
    }

    public void incrementMetric(MetricType metricType) {
        this.a.add(new MetricHitIncrement(metricType, 1));
    }

    public boolean isMetricsCollectorEmpty() {
        return this.a.isEmpty();
    }

    public void publishMetricInMilliseconds(MetricType metricType, long j) {
        this.a.add(new MetricHitTotalTime(metricType, j));
    }

    public void publishMetricInMillisecondsFromNanoseconds(MetricType metricType, long j) {
        publishMetricInMilliseconds(metricType, Utils.convertToMillisecondsFromNanoseconds(j));
    }

    public void setAdType(AdType adType) {
        this.b = adType.a();
    }

    public void setMetricString(MetricType metricType, String str) {
        this.a.add(new MetricHitString(metricType, str));
    }

    public void startMetric(MetricType metricType) {
        startMetricInMillisecondsFromNanoseconds(metricType, System.nanoTime());
    }

    public void startMetricInMillisecondsFromNanoseconds(MetricType metricType, long j) {
        this.a.add(new MetricHitStartTime(metricType, Utils.convertToMillisecondsFromNanoseconds(j)));
    }

    public void stopMetric(MetricType metricType) {
        stopMetricInMillisecondsFromNanoseconds(metricType, System.nanoTime());
    }

    public void stopMetricInMillisecondsFromNanoseconds(MetricType metricType, long j) {
        this.a.add(new MetricHitStopTime(metricType, Utils.convertToMillisecondsFromNanoseconds(j)));
    }
}