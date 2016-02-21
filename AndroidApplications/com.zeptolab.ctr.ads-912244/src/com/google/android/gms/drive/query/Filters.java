package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.CollectionMetadataField;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.query.internal.ComparisonFilter;
import com.google.android.gms.drive.query.internal.FieldOnlyFilter;
import com.google.android.gms.drive.query.internal.InFilter;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.NotFilter;
import com.google.android.gms.drive.query.internal.Operator;

public class Filters {
    public static Filter and(Filter filter, Filter... filterArr) {
        return new LogicalFilter(Operator.Ff, filter, filterArr);
    }

    public static Filter and(Iterable iterable) {
        return new LogicalFilter(Operator.Ff, iterable);
    }

    public static Filter contains(MetadataField metadataField, Object obj) {
        return new ComparisonFilter(Operator.Fi, metadataField, obj);
    }

    public static Filter eq(MetadataField metadataField, Object obj) {
        return new ComparisonFilter(Operator.Fa, metadataField, obj);
    }

    public static Filter greaterThan(MetadataField metadataField, Object obj) {
        return new ComparisonFilter(Operator.Fd, metadataField, obj);
    }

    public static Filter greaterThanEquals(MetadataField metadataField, Object obj) {
        return new ComparisonFilter(Operator.Fe, metadataField, obj);
    }

    public static Filter in(CollectionMetadataField collectionMetadataField, Object obj) {
        return new InFilter(collectionMetadataField, obj);
    }

    public static Filter lessThan(MetadataField metadataField, Object obj) {
        return new ComparisonFilter(Operator.Fb, metadataField, obj);
    }

    public static Filter lessThanEquals(MetadataField metadataField, Object obj) {
        return new ComparisonFilter(Operator.Fc, metadataField, obj);
    }

    public static Filter not(Filter filter) {
        return new NotFilter(filter);
    }

    public static Filter or(Filter filter, Filter... filterArr) {
        return new LogicalFilter(Operator.Fg, filter, filterArr);
    }

    public static Filter or(Iterable iterable) {
        return new LogicalFilter(Operator.Fg, iterable);
    }

    public static Filter sharedWithMe() {
        return new FieldOnlyFilter(SearchableField.EH);
    }
}