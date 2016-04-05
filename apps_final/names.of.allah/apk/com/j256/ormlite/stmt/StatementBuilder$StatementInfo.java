package com.j256.ormlite.stmt;

import java.util.List;

public class StatementBuilder$StatementInfo
{
  private final List<ArgumentHolder> argList;
  private final String statement;
  
  private StatementBuilder$StatementInfo(String paramString, List<ArgumentHolder> paramList)
  {
    argList = paramList;
    statement = paramString;
  }
  
  public List<ArgumentHolder> getArgList()
  {
    return argList;
  }
  
  public String getStatement()
  {
    return statement;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.StatementBuilder.StatementInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */