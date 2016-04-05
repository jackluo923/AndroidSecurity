package com.j256.ormlite.logger;

import java.util.regex.Pattern;

class LocalLog$PatternLevel
{
  Log.Level level;
  Pattern pattern;
  
  public LocalLog$PatternLevel(Pattern paramPattern, Log.Level paramLevel)
  {
    pattern = paramPattern;
    level = paramLevel;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.logger.LocalLog.PatternLevel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */