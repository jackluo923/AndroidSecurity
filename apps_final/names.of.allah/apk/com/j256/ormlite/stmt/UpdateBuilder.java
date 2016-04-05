package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.query.Clause;
import com.j256.ormlite.stmt.query.SetExpression;
import com.j256.ormlite.stmt.query.SetValue;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UpdateBuilder<T, ID>
  extends StatementBuilder<T, ID>
{
  private List<Clause> updateClauseList = null;
  
  public UpdateBuilder(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, Dao<T, ID> paramDao)
  {
    super(paramDatabaseType, paramTableInfo, paramDao, StatementBuilder.StatementType.UPDATE);
  }
  
  private void addUpdateColumnToList(String paramString, Clause paramClause)
  {
    if (updateClauseList == null) {
      updateClauseList = new ArrayList();
    }
    updateClauseList.add(paramClause);
  }
  
  protected void appendStatementEnd(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList) {}
  
  protected void appendStatementStart(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    if ((updateClauseList == null) || (updateClauseList.isEmpty())) {
      throw new IllegalArgumentException("UPDATE statements must have at least one SET column");
    }
    paramStringBuilder.append("UPDATE ");
    databaseType.appendEscapedEntityName(paramStringBuilder, tableInfo.getTableName());
    paramStringBuilder.append(" SET ");
    Iterator localIterator = updateClauseList.iterator();
    int i = 1;
    if (localIterator.hasNext())
    {
      Clause localClause = (Clause)localIterator.next();
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        localClause.appendSql(databaseType, null, paramStringBuilder, paramList);
        break;
        paramStringBuilder.append(',');
      }
    }
  }
  
  @Deprecated
  public void clear()
  {
    reset();
  }
  
  public String escapeColumnName(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length() + 4);
    databaseType.appendEscapedEntityName(localStringBuilder, paramString);
    return localStringBuilder.toString();
  }
  
  public void escapeColumnName(StringBuilder paramStringBuilder, String paramString)
  {
    databaseType.appendEscapedEntityName(paramStringBuilder, paramString);
  }
  
  public String escapeValue(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length() + 4);
    databaseType.appendEscapedWord(localStringBuilder, paramString);
    return localStringBuilder.toString();
  }
  
  public void escapeValue(StringBuilder paramStringBuilder, String paramString)
  {
    databaseType.appendEscapedWord(paramStringBuilder, paramString);
  }
  
  public PreparedUpdate<T> prepare()
  {
    return super.prepareStatement(null);
  }
  
  public void reset()
  {
    super.reset();
    updateClauseList = null;
  }
  
  public int update()
  {
    return dao.update(prepare());
  }
  
  public StatementBuilder<T, ID> updateColumnExpression(String paramString1, String paramString2)
  {
    FieldType localFieldType = verifyColumnName(paramString1);
    if (localFieldType.isForeignCollection()) {
      throw new SQLException("Can't update foreign colletion field: " + paramString1);
    }
    addUpdateColumnToList(paramString1, new SetExpression(paramString1, localFieldType, paramString2));
    return this;
  }
  
  public StatementBuilder<T, ID> updateColumnValue(String paramString, Object paramObject)
  {
    FieldType localFieldType = verifyColumnName(paramString);
    if (localFieldType.isForeignCollection()) {
      throw new SQLException("Can't update foreign colletion field: " + paramString);
    }
    addUpdateColumnToList(paramString, new SetValue(paramString, localFieldType, paramObject));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.UpdateBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */