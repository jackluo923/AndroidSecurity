package com.google.analytics.tracking.android;

import org.apache.http.client.HttpClient;

abstract interface HttpClientFactory
{
  public abstract HttpClient newInstance();
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.HttpClientFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */