package com.google.analytics.tracking.android;

import java.util.Map;

abstract class TrackerHandler
{
  abstract void sendHit(Map<String, String> paramMap);
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.TrackerHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */