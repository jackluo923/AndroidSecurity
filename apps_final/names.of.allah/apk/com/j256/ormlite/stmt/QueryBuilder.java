package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.CloseableIterator;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.GenericRawResults;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.query.OrderBy;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class QueryBuilder<T, ID>
  extends StatementBuilder<T, ID>
{
  private boolean distinct;
  private List<String> groupByList;
  private String groupByRaw;
  private String having;
  private final FieldType idField;
  private boolean isCountOfQuery;
  private boolean isInnerQuery;
  private List<QueryBuilder<T, ID>.JoinInfo> joinList;
  private Long limit;
  private Long offset;
  private ArgumentHolder[] orderByArgs;
  private List<OrderBy> orderByList;
  private String orderByRaw;
  private FieldType[] resultFieldTypes;
  private List<String> selectColumnList;
  private boolean selectIdColumn = true;
  private List<String> selectRawList;
  
  public QueryBuilder(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo, Dao<T, ID> paramDao)
  {
    super(paramDatabaseType, paramTableInfo, paramDao, StatementBuilder.StatementType.SELECT);
    idField = paramTableInfo.getIdField();
  }
  
  private void addJoinInfo(String paramString, QueryBuilder<?, ?> paramQueryBuilder, StatementBuilder.WhereOperation paramWhereOperation)
  {
    paramString = new QueryBuilder.JoinInfo(this, paramString, paramQueryBuilder, paramWhereOperation);
    matchJoinedFields(paramString, paramQueryBuilder);
    if (joinList == null) {
      joinList = new ArrayList();
    }
    joinList.add(paramString);
  }
  
  private void addSelectColumnToList(String paramString)
  {
    verifyColumnName(paramString);
    selectColumnList.add(paramString);
  }
  
  private void appendColumnName(StringBuilder paramStringBuilder, String paramString)
  {
    if (addTableName)
    {
      databaseType.appendEscapedEntityName(paramStringBuilder, tableName);
      paramStringBuilder.append('.');
    }
    databaseType.appendEscapedEntityName(paramStringBuilder, paramString);
  }
  
  private void appendColumns(StringBuilder paramStringBuilder)
  {
    if (selectColumnList == null)
    {
      if (addTableName)
      {
        databaseType.appendEscapedEntityName(paramStringBuilder, tableName);
        paramStringBuilder.append('.');
      }
      paramStringBuilder.append("* ");
      resultFieldTypes = tableInfo.getFieldTypes();
      return;
    }
    if (isInnerQuery) {}
    ArrayList localArrayList;
    int j;
    Object localObject;
    for (int i = 1;; i = 0)
    {
      localArrayList = new ArrayList(selectColumnList.size() + 1);
      Iterator localIterator = selectColumnList.iterator();
      j = 1;
      for (;;)
      {
        if (!localIterator.hasNext()) {
          break label194;
        }
        localObject = (String)localIterator.next();
        localObject = tableInfo.getFieldTypeByColumnName((String)localObject);
        if (!((FieldType)localObject).isForeignCollection()) {
          break;
        }
        localArrayList.add(localObject);
      }
    }
    if (j != 0)
    {
      j = 0;
      label161:
      appendFieldColumnName(paramStringBuilder, (FieldType)localObject, localArrayList);
      if (localObject != idField) {
        break label258;
      }
      i = 1;
    }
    label194:
    label258:
    for (;;)
    {
      break;
      paramStringBuilder.append(',');
      break label161;
      if ((i == 0) && (selectIdColumn))
      {
        if (j == 0) {
          paramStringBuilder.append(',');
        }
        appendFieldColumnName(paramStringBuilder, idField, localArrayList);
      }
      paramStringBuilder.append(' ');
      resultFieldTypes = ((FieldType[])localArrayList.toArray(new FieldType[localArrayList.size()]));
      return;
    }
  }
  
  private void appendFieldColumnName(StringBuilder paramStringBuilder, FieldType paramFieldType, List<FieldType> paramList)
  {
    appendColumnName(paramStringBuilder, paramFieldType.getColumnName());
    if (paramList != null) {
      paramList.add(paramFieldType);
    }
  }
  
  private void appendGroupBys(StringBuilder paramStringBuilder)
  {
    if (hasGroupStuff()) {
      appendGroupBys(paramStringBuilder, true);
    }
    for (boolean bool = false;; bool = true)
    {
      if (joinList != null)
      {
        Iterator localIterator = joinList.iterator();
        while (localIterator.hasNext())
        {
          QueryBuilder.JoinInfo localJoinInfo = (QueryBuilder.JoinInfo)localIterator.next();
          if ((queryBuilder != null) && (queryBuilder.hasGroupStuff())) {
            queryBuilder.appendGroupBys(paramStringBuilder, bool);
          }
        }
      }
      return;
    }
  }
  
  private void appendGroupBys(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramStringBuilder.append("GROUP BY ");
    }
    if (groupByRaw != null)
    {
      if (!paramBoolean) {
        paramStringBuilder.append(',');
      }
      paramStringBuilder.append(groupByRaw);
      paramStringBuilder.append(' ');
      return;
    }
    Iterator localIterator = groupByList.iterator();
    label56:
    String str;
    if (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      if (!paramBoolean) {
        break label92;
      }
      paramBoolean = false;
    }
    for (;;)
    {
      appendColumnName(paramStringBuilder, str);
      break label56;
      break;
      label92:
      paramStringBuilder.append(',');
    }
  }
  
  private void appendHaving(StringBuilder paramStringBuilder)
  {
    if (having != null) {
      paramStringBuilder.append("HAVING ").append(having).append(' ');
    }
  }
  
  private void appendJoinSql(StringBuilder paramStringBuilder)
  {
    Iterator localIterator = joinList.iterator();
    while (localIterator.hasNext())
    {
      QueryBuilder.JoinInfo localJoinInfo = (QueryBuilder.JoinInfo)localIterator.next();
      paramStringBuilder.append(type).append(" JOIN ");
      databaseType.appendEscapedEntityName(paramStringBuilder, queryBuilder.tableName);
      paramStringBuilder.append(" ON ");
      databaseType.appendEscapedEntityName(paramStringBuilder, tableName);
      paramStringBuilder.append('.');
      databaseType.appendEscapedEntityName(paramStringBuilder, localField.getColumnName());
      paramStringBuilder.append(" = ");
      databaseType.appendEscapedEntityName(paramStringBuilder, queryBuilder.tableName);
      paramStringBuilder.append('.');
      databaseType.appendEscapedEntityName(paramStringBuilder, remoteField.getColumnName());
      paramStringBuilder.append(' ');
      if (queryBuilder.joinList != null) {
        queryBuilder.appendJoinSql(paramStringBuilder);
      }
    }
  }
  
  private void appendLimit(StringBuilder paramStringBuilder)
  {
    if ((limit != null) && (databaseType.isLimitSqlSupported())) {
      databaseType.appendLimitValue(paramStringBuilder, limit.longValue(), offset);
    }
  }
  
  private void appendOffset(StringBuilder paramStringBuilder)
  {
    if (offset == null) {}
    do
    {
      return;
      if (!databaseType.isOffsetLimitArgument()) {
        break;
      }
    } while (limit != null);
    throw new SQLException("If the offset is specified, limit must also be specified with this database");
    databaseType.appendOffsetValue(paramStringBuilder, offset.longValue());
  }
  
  private void appendOrderBys(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    if (hasOrderStuff()) {
      appendOrderBys(paramStringBuilder, true, paramList);
    }
    for (boolean bool = false;; bool = true)
    {
      if (joinList != null)
      {
        Iterator localIterator = joinList.iterator();
        while (localIterator.hasNext())
        {
          QueryBuilder.JoinInfo localJoinInfo = (QueryBuilder.JoinInfo)localIterator.next();
          if ((queryBuilder != null) && (queryBuilder.hasOrderStuff())) {
            queryBuilder.appendOrderBys(paramStringBuilder, bool, paramList);
          }
        }
      }
      return;
    }
  }
  
  private void appendOrderBys(StringBuilder paramStringBuilder, boolean paramBoolean, List<ArgumentHolder> paramList)
  {
    if (paramBoolean) {
      paramStringBuilder.append("ORDER BY ");
    }
    boolean bool = paramBoolean;
    Object localObject;
    if (orderByRaw != null)
    {
      if (!paramBoolean) {
        paramStringBuilder.append(',');
      }
      paramStringBuilder.append(orderByRaw);
      if (orderByArgs != null)
      {
        localObject = orderByArgs;
        int j = localObject.length;
        int i = 0;
        while (i < j)
        {
          paramList.add(localObject[i]);
          i += 1;
        }
      }
      bool = false;
    }
    if (orderByList != null)
    {
      paramList = orderByList.iterator();
      if (paramList.hasNext())
      {
        localObject = (OrderBy)paramList.next();
        if (bool) {}
        for (paramBoolean = false;; paramBoolean = bool)
        {
          appendColumnName(paramStringBuilder, ((OrderBy)localObject).getColumnName());
          bool = paramBoolean;
          if (((OrderBy)localObject).isAscending()) {
            break;
          }
          paramStringBuilder.append(" DESC");
          bool = paramBoolean;
          break;
          paramStringBuilder.append(',');
        }
      }
    }
    paramStringBuilder.append(' ');
  }
  
  private void appendSelectRaw(StringBuilder paramStringBuilder)
  {
    Iterator localIterator = selectRawList.iterator();
    int i = 1;
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        paramStringBuilder.append(str);
        break;
        paramStringBuilder.append(", ");
      }
    }
    paramStringBuilder.append(' ');
  }
  
  private boolean hasGroupStuff()
  {
    return ((groupByList != null) && (!groupByList.isEmpty())) || (groupByRaw != null);
  }
  
  private boolean hasOrderStuff()
  {
    return ((orderByList != null) && (!orderByList.isEmpty())) || (orderByRaw != null);
  }
  
  private void matchJoinedFields(QueryBuilder<T, ID>.JoinInfo paramQueryBuilder, QueryBuilder<?, ?> paramQueryBuilder1)
  {
    int j = 0;
    FieldType[] arrayOfFieldType = tableInfo.getFieldTypes();
    int k = arrayOfFieldType.length;
    int i = 0;
    FieldType localFieldType1;
    while (i < k)
    {
      localFieldType1 = arrayOfFieldType[i];
      FieldType localFieldType2 = localFieldType1.getForeignIdField();
      if ((localFieldType1.isForeign()) && (localFieldType2.equals(tableInfo.getIdField())))
      {
        localField = localFieldType1;
        remoteField = localFieldType2;
        return;
      }
      i += 1;
    }
    arrayOfFieldType = tableInfo.getFieldTypes();
    k = arrayOfFieldType.length;
    i = j;
    while (i < k)
    {
      localFieldType1 = arrayOfFieldType[i];
      if ((localFieldType1.isForeign()) && (localFieldType1.getForeignIdField().equals(idField)))
      {
        localField = idField;
        remoteField = localFieldType1;
        return;
      }
      i += 1;
    }
    throw new SQLException("Could not find a foreign " + tableInfo.getDataClass() + " field in " + tableInfo.getDataClass() + " or vice versa");
  }
  
  private void setAddTableName(boolean paramBoolean)
  {
    addTableName = paramBoolean;
    if (joinList != null)
    {
      Iterator localIterator = joinList.iterator();
      while (localIterator.hasNext()) {
        nextqueryBuilder.setAddTableName(paramBoolean);
      }
    }
  }
  
  protected void appendStatementEnd(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    appendGroupBys(paramStringBuilder);
    appendHaving(paramStringBuilder);
    appendOrderBys(paramStringBuilder, paramList);
    if (!databaseType.isLimitAfterSelect()) {
      appendLimit(paramStringBuilder);
    }
    appendOffset(paramStringBuilder);
    setAddTableName(false);
  }
  
  protected void appendStatementStart(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList)
  {
    if (joinList == null)
    {
      setAddTableName(false);
      paramStringBuilder.append("SELECT ");
      if (databaseType.isLimitAfterSelect()) {
        appendLimit(paramStringBuilder);
      }
      if (distinct) {
        paramStringBuilder.append("DISTINCT ");
      }
      if (!isCountOfQuery) {
        break label124;
      }
      type = StatementBuilder.StatementType.SELECT_LONG;
      paramStringBuilder.append("COUNT(*) ");
    }
    for (;;)
    {
      paramStringBuilder.append("FROM ");
      databaseType.appendEscapedEntityName(paramStringBuilder, tableName);
      paramStringBuilder.append(' ');
      if (joinList != null) {
        appendJoinSql(paramStringBuilder);
      }
      return;
      setAddTableName(true);
      break;
      label124:
      if ((selectRawList != null) && (!selectRawList.isEmpty()))
      {
        type = StatementBuilder.StatementType.SELECT_RAW;
        appendSelectRaw(paramStringBuilder);
      }
      else
      {
        type = StatementBuilder.StatementType.SELECT;
        appendColumns(paramStringBuilder);
      }
    }
  }
  
  protected boolean appendWhereStatement(StringBuilder paramStringBuilder, List<ArgumentHolder> paramList, StatementBuilder.WhereOperation paramWhereOperation)
  {
    boolean bool1;
    label44:
    QueryBuilder.JoinInfo localJoinInfo;
    if (paramWhereOperation == StatementBuilder.WhereOperation.FIRST)
    {
      bool1 = true;
      if (where != null) {
        bool1 = super.appendWhereStatement(paramStringBuilder, paramList, paramWhereOperation);
      }
      if (joinList == null) {
        break label110;
      }
      Iterator localIterator = joinList.iterator();
      bool2 = bool1;
      if (!localIterator.hasNext()) {
        break label114;
      }
      localJoinInfo = (QueryBuilder.JoinInfo)localIterator.next();
      if (!bool1) {
        break label101;
      }
    }
    label101:
    for (paramWhereOperation = StatementBuilder.WhereOperation.FIRST;; paramWhereOperation = operation)
    {
      bool1 = queryBuilder.appendWhereStatement(paramStringBuilder, paramList, paramWhereOperation);
      break label44;
      bool1 = false;
      break;
    }
    label110:
    boolean bool2 = bool1;
    label114:
    return bool2;
  }
  
  @Deprecated
  public void clear()
  {
    reset();
  }
  
  public long countOf()
  {
    setCountOf(true);
    return dao.countOf(prepare());
  }
  
  public QueryBuilder<T, ID> distinct()
  {
    distinct = true;
    selectIdColumn = false;
    return this;
  }
  
  void enableInnerQuery()
  {
    isInnerQuery = true;
  }
  
  protected FieldType[] getResultFieldTypes()
  {
    return resultFieldTypes;
  }
  
  int getSelectColumnCount()
  {
    if (isCountOfQuery) {
      return 1;
    }
    if ((selectRawList != null) && (!selectRawList.isEmpty())) {
      return selectRawList.size();
    }
    if (selectColumnList == null) {
      return 0;
    }
    return selectColumnList.size();
  }
  
  List<String> getSelectColumns()
  {
    if (isCountOfQuery) {
      return Collections.singletonList("COUNT(*)");
    }
    if ((selectRawList != null) && (!selectRawList.isEmpty())) {
      return selectRawList;
    }
    if (selectColumnList == null) {
      return Collections.emptyList();
    }
    return selectColumnList;
  }
  
  public QueryBuilder<T, ID> groupBy(String paramString)
  {
    if (verifyColumnName(paramString).isForeignCollection()) {
      throw new IllegalArgumentException("Can't groupBy foreign colletion field: " + paramString);
    }
    if (groupByList == null) {
      groupByList = new ArrayList();
    }
    groupByList.add(paramString);
    selectIdColumn = false;
    return this;
  }
  
  public QueryBuilder<T, ID> groupByRaw(String paramString)
  {
    groupByRaw = paramString;
    return this;
  }
  
  public QueryBuilder<T, ID> having(String paramString)
  {
    having = paramString;
    return this;
  }
  
  public CloseableIterator<T> iterator()
  {
    return dao.iterator(prepare());
  }
  
  public QueryBuilder<T, ID> join(QueryBuilder<?, ?> paramQueryBuilder)
  {
    addJoinInfo("INNER", paramQueryBuilder, StatementBuilder.WhereOperation.AND);
    return this;
  }
  
  public QueryBuilder<T, ID> joinOr(QueryBuilder<?, ?> paramQueryBuilder)
  {
    addJoinInfo("INNER", paramQueryBuilder, StatementBuilder.WhereOperation.OR);
    return this;
  }
  
  public QueryBuilder<T, ID> leftJoin(QueryBuilder<?, ?> paramQueryBuilder)
  {
    addJoinInfo("LEFT", paramQueryBuilder, StatementBuilder.WhereOperation.AND);
    return this;
  }
  
  public QueryBuilder<T, ID> leftJoinOr(QueryBuilder<?, ?> paramQueryBuilder)
  {
    addJoinInfo("LEFT", paramQueryBuilder, StatementBuilder.WhereOperation.OR);
    return this;
  }
  
  @Deprecated
  public QueryBuilder<T, ID> limit(int paramInt)
  {
    return limit(Long.valueOf(paramInt));
  }
  
  public QueryBuilder<T, ID> limit(Long paramLong)
  {
    limit = paramLong;
    return this;
  }
  
  @Deprecated
  public QueryBuilder<T, ID> offset(int paramInt)
  {
    return offset(Long.valueOf(paramInt));
  }
  
  public QueryBuilder<T, ID> offset(Long paramLong)
  {
    if (databaseType.isOffsetSqlSupported())
    {
      offset = paramLong;
      return this;
    }
    throw new SQLException("Offset is not supported by this database");
  }
  
  public QueryBuilder<T, ID> orderBy(String paramString, boolean paramBoolean)
  {
    if (verifyColumnName(paramString).isForeignCollection()) {
      throw new IllegalArgumentException("Can't orderBy foreign colletion field: " + paramString);
    }
    if (orderByList == null) {
      orderByList = new ArrayList();
    }
    orderByList.add(new OrderBy(paramString, paramBoolean));
    return this;
  }
  
  public QueryBuilder<T, ID> orderByRaw(String paramString)
  {
    return orderByRaw(paramString, null);
  }
  
  public QueryBuilder<T, ID> orderByRaw(String paramString, ArgumentHolder... paramVarArgs)
  {
    orderByRaw = paramString;
    orderByArgs = paramVarArgs;
    return this;
  }
  
  public PreparedQuery<T> prepare()
  {
    return super.prepareStatement(limit);
  }
  
  public List<T> query()
  {
    return dao.query(prepare());
  }
  
  public T queryForFirst()
  {
    return (T)dao.queryForFirst(prepare());
  }
  
  public GenericRawResults<String[]> queryRaw()
  {
    return dao.queryRaw(prepareStatementString(), new String[0]);
  }
  
  public String[] queryRawFirst()
  {
    return (String[])dao.queryRaw(prepareStatementString(), new String[0]).getFirstResult();
  }
  
  public void reset()
  {
    super.reset();
    distinct = false;
    selectIdColumn = true;
    selectColumnList = null;
    selectRawList = null;
    orderByList = null;
    orderByRaw = null;
    groupByList = null;
    groupByRaw = null;
    isInnerQuery = false;
    isCountOfQuery = false;
    having = null;
    limit = null;
    offset = null;
    if (joinList != null)
    {
      joinList.clear();
      joinList = null;
    }
    addTableName = false;
  }
  
  public QueryBuilder<T, ID> selectColumns(Iterable<String> paramIterable)
  {
    if (selectColumnList == null) {
      selectColumnList = new ArrayList();
    }
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      addSelectColumnToList((String)paramIterable.next());
    }
    return this;
  }
  
  public QueryBuilder<T, ID> selectColumns(String... paramVarArgs)
  {
    if (selectColumnList == null) {
      selectColumnList = new ArrayList();
    }
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      addSelectColumnToList(paramVarArgs[i]);
      i += 1;
    }
    return this;
  }
  
  public QueryBuilder<T, ID> selectRaw(String... paramVarArgs)
  {
    if (selectRawList == null) {
      selectRawList = new ArrayList();
    }
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      String str = paramVarArgs[i];
      selectRawList.add(str);
      i += 1;
    }
    return this;
  }
  
  public QueryBuilder<T, ID> setCountOf(boolean paramBoolean)
  {
    isCountOfQuery = paramBoolean;
    return this;
  }
  
  protected boolean shouldPrependTableNameToColumns()
  {
    return joinList != null;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.QueryBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */