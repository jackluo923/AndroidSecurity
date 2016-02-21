package com.pocketools.currency;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class DBAdapter {
    private static final String CURRENCY_TABLE = "currency";
    private static final String CURRENCY_TABLE_CREATE = "CREATE TABLE currency (_id INT,currency_type TEXT, currency_description TEXT, exchange_rate REAL, exchange_rate_selected INT, spare_1 TEXT);";
    private static final String DATABASE_NAME = "pocket_currency";
    private static final int DATABASE_VERSION = 33;
    private static final String DEFAULTS_TABLE = "defaults";
    private static final String DEFAULTS_TABLE_CREATE = "CREATE TABLE defaults (default_type TEXT, default_value TEXT);";
    public static final String KEY_CURRENCY = "currency_type";
    public static final String KEY_CURRENCY_DESCRIPTION = "currency_description";
    public static final String KEY_CURRENCY_IS_SELECTED = "exchange_rate_selected";
    public static final String KEY_CURRENCY_SINGLE_X_RATE_DATE = "spare_1";
    public static final String KEY_CURRENCY_X_RATE = "exchange_rate";
    public static final String KEY_CURRENCY_X_RATE_REFRESH_DATE = "xrate_refresh_date";
    public static final String KEY_DEFAULT_TYPE = "default_type";
    public static final String KEY_DEFAULT_VALUE = "default_value";
    private static final String TAG = "CurrencyDbAdapter";
    private Context mCtx;
    private SQLiteDatabase mDb;
    private DatabaseHelper mDbHelper;

    private static class DatabaseHelper extends SQLiteOpenHelper {
        DatabaseHelper(Context context) {
            super(context, DATABASE_NAME, null, 33);
        }

        public void onCreate(SQLiteDatabase db) {
            Log.w(TAG, "Creating new Database");
            db.execSQL(CURRENCY_TABLE_CREATE);
            db.execSQL(DEFAULTS_TABLE_CREATE);
            db.execSQL("INSERT INTO currency VALUES (0,\"AFN\",\"Afghanistan Afghanis\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (1,\"AED\",\"United Arab Emirates Dirhams\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (2,\"ALL\",\"Albania Leke\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (3,\"ARS\",\"Argentina Pesos\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (4,\"AUD\",\"Australia Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (5,\"BBD\",\"Barbados Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (6,\"BDT\",\"Bangladesh Taka\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (7,\"BGN\",\"Bulgaria Leva\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (8,\"BHD\",\"Bahrain Dinars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (9,\"BMD\",\"Bermuda Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (10,\"BRL\",\"Brazil Reais\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (11,\"BSD\",\"Bahamas Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (12,\"CAD\",\"Canada Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (13,\"CHF\",\"Switzerland Francs\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (14,\"CLP\",\"Chile Pesos\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (15,\"COP\",\"Colombia Pesos\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (16,\"CRC\",\"Costa Rica Colones\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (17,\"CNY\",\"China Yuan Renminbi\",0,1,\"\")");
            db.execSQL("INSERT INTO currency VALUES (18,\"CZK\",\"Czech Republic Koruny\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (19,\"DKK\",\"Denmark Kroner\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (20,\"DOP\",\"Dominican Republic Pesos\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (21,\"DZD\",\"Algeria Dinars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (22,\"EEK\",\"Estonia Krooni\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (23,\"EGP\",\"Egypt Pounds\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (24,\"EUR\",\"Euro\",1,1,\"\")");
            db.execSQL("INSERT INTO currency VALUES (25,\"FJD\",\"Fiji Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (26,\"GBP\",\"United Kingdom Pounds\",0,1,\"\")");
            db.execSQL("INSERT INTO currency VALUES (27,\"HKD\",\"Hong Kong Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (28,\"HRK\",\"Croatia Kuna\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (29,\"HUF\",\"Hungary Forint\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (30,\"IDR\",\"Indonesia Rupiahs\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (31,\"ILS\",\"Israel New Shekels\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (32,\"INR\",\"India Rupees\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (33,\"IQD\",\"Iraq Dinars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (34,\"IRR\",\"Iran Rials\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (35,\"ISK\",\"Iceland Kronur\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (36,\"JMD\",\"Jamaica Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (37,\"JOD\",\"Jordan Dinars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (38,\"KES\",\"Kenya Shillings\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (39,\"KRW\",\"South Korea Won\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (40,\"KWD\",\"Kuwait Dinars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (41,\"LBP\",\"Lebanon Pounds\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (42,\"LKR\",\"Sri Lanka Rupees\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (43,\"MAD\",\"Morocco Dirhams\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (44,\"MUR\",\"Mauritius Rupees\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (45,\"MXN\",\"Mexico Pesos\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (46,\"MYR\",\"Malaysia Ringgits\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (47,\"NOK\",\"Norway Kroner\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (48,\"NZD\",\"New Zealand Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (49,\"OMR\",\"Oman Rials\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (50,\"PEN\",\"Peru Nuevos Soles\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (51,\"PHP\",\"Philippines Pesos\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (52,\"PKR\",\"Pakistan Rupees\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (53,\"PLN\",\"Poland Zlotych\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (54,\"QAR\",\"Qatar Riyals\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (55,\"RON\",\"Romania New Lei\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (56,\"RUB\",\"Russia Rubles\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (57,\"SAR\",\"Saudi Arabia Riyals\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (58,\"SDG\",\"Sudan Pounds\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (59,\"SEK\",\"Sweden Kronor\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (60,\"SGD\",\"Singapore Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (61,\"THB\",\"Thailand Baht\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (62,\"TND\",\"Tunisia Dinars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (63,\"JPY\",\"Japan Yen\",0,1,\"\")");
            db.execSQL("INSERT INTO currency VALUES (64,\"TRY\",\"Turkey Lira\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (65,\"TTD\",\"Trinidad and Tobago Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (66,\"TWD\",\"Taiwan New Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (67,\"USD\",\"United States Dollars\",1.40,1,\"\")");
            db.execSQL("INSERT INTO currency VALUES (68,\"VEF\",\"Venezuela Bolivares Fuertes\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (69,\"VND\",\"Vietnam Dong\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (70,\"XAF\",\"CFA BEAC Francs\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (71,\"XAG\",\"Silver Ounces\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (72,\"XAU\",\"Gold Ounces\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (73,\"XCD\",\"Eastern Caribbean Dollars\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (74,\"XDR\",\"IMF Special Drawing Right\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (75,\"XOF\",\"CFA BCEAO Francs\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (76,\"XPD\",\"Palladium Ounces\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (77,\"XPF\",\"CFP Francs\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (78,\"XPT\",\"Platinum Ounces\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (79,\"ZAR\",\"South Africa Rand\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (80,\"ZMK\",\"Zambia Kwacha\",0,0,\"\")");
            db.execSQL("INSERT INTO currency VALUES (81,\"NGN\",\"Nigerian Naira\",0,0,\"\")");
            db.execSQL("INSERT INTO defaults VALUES (\"default_base_currency\",\"EUR\")");
            db.execSQL("INSERT INTO defaults VALUES (\"default_result_currency\",\"USD\")");
            db.execSQL("INSERT INTO defaults VALUES (\"refresh_date\",\"2009-10-13\")");
            db.execSQL("INSERT INTO defaults VALUES (\"user_agreement_accepted\",\"false\")");
            db.execSQL("INSERT INTO defaults VALUES (\"default_base_currency_list\",\"USD\")");
            db.execSQL("INSERT INTO defaults VALUES (\"default_base_currency_amount\",\"1\")");
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Log.w(TAG, new StringBuilder("Upgrading database from version ").append(oldVersion).append(" to ").append(newVersion).append(", which will destroy all old data").toString());
            db.execSQL("DROP TABLE IF EXISTS currency");
            db.execSQL("DROP TABLE IF EXISTS defaults");
            onCreate(db);
        }
    }

    public DBAdapter(Context ctx) {
        this.mCtx = null;
        this.mCtx = ctx;
    }

    public void addAdPreferences(String ad_preferences) {
        this.mDb.execSQL(new StringBuilder("INSERT INTO defaults VALUES (\"ad_preferences\",\"").append(ad_preferences).append("\")").toString());
    }

    public long addCurrency(String symbol, String name, double x_rate, int selected, String last_updated) {
        ContentValues initialValues = new ContentValues();
        initialValues.put(KEY_CURRENCY, symbol);
        initialValues.put(KEY_CURRENCY_DESCRIPTION, name);
        initialValues.put(KEY_CURRENCY_X_RATE, Double.valueOf(x_rate));
        initialValues.put(KEY_CURRENCY_IS_SELECTED, Integer.valueOf(selected));
        initialValues.put(KEY_CURRENCY_SINGLE_X_RATE_DATE, last_updated);
        return this.mDb.insert(CURRENCY_TABLE, null, initialValues);
    }

    public void addDefaultLocation(String default_location) {
        this.mDb.execSQL(new StringBuilder("INSERT INTO defaults VALUES (\"default_location\",\"").append(default_location).append("\")").toString());
    }

    public void addDefaultNewsCurrency(String currency_type) {
        this.mDb.execSQL(new StringBuilder("INSERT INTO defaults VALUES (\"default_news_currency\",\"").append(currency_type).append("\")").toString());
    }

    public void addDefaultPage(String default_page) {
        this.mDb.execSQL(new StringBuilder("INSERT INTO defaults VALUES (\"default_page\",\"").append(default_page).append("\")").toString());
    }

    public void addVisitNumberInDB() {
        this.mDb.execSQL("INSERT INTO defaults VALUES (\"visit_number\",\"1\")");
    }

    public void close() {
        this.mDbHelper.close();
    }

    public Context getContext() {
        return this.mCtx;
    }

    public Cursor getCurrencies() {
        return this.mDb.rawQuery("SELECT * FROM currency ORDER BY currency_type ASC", null);
    }

    public Cursor getCurrencyDetails(String currency) {
        return this.mDb.rawQuery(new StringBuilder("SELECT * FROM currency WHERE currency_type = \"").append(currency).append("\"").toString(), null);
    }

    public SQLiteDatabase getDatabase() {
        return this.mDb;
    }

    public Cursor getDefaultValues() {
        return this.mDb.rawQuery("SELECT * from defaults", null);
    }

    public Cursor getExchangeRate(String currency_type) {
        return this.mDb.rawQuery(new StringBuilder("SELECT exchange_rate from currency WHERE currency_type = \"").append(currency_type).append("\"").toString(), null);
    }

    public Cursor getExchangeRateDate(String currency_type) {
        return this.mDb.rawQuery(new StringBuilder("SELECT spare_1 from currency WHERE currency_type = \"").append(currency_type).append("\"").toString(), null);
    }

    public Cursor getSelectedCurrencies() {
        return this.mDb.rawQuery("SELECT * FROM currency WHERE exchange_rate_selected = 1 ORDER BY currency_type ASC", null);
    }

    public DBAdapter open() throws SQLException {
        this.mDbHelper = new DatabaseHelper(this.mCtx);
        this.mDb = this.mDbHelper.getWritableDatabase();
        return this;
    }

    public void setDealInstructionsSeen(String seen) {
        this.mDb.execSQL(new StringBuilder("INSERT INTO defaults VALUES (\"deal_instructions_seen\",\"").append(seen).append("\")").toString());
    }

    public void setDefaultBaseCurrency(String currency_type) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(currency_type).append("\" WHERE default_type = \"default_base_currency\"").toString());
    }

    public void setDefaultBaseCurrencyList(String currency_type) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(currency_type).append("\" WHERE default_type = \"default_base_currency_list\"").toString());
    }

    public void setDefaultBaseCurrencyListAmount(String currency_amount) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(currency_amount).append("\" WHERE default_type = \"default_base_currency_amount\"").toString());
    }

    public void setDefaultResultCurrency(String currency_type) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(currency_type).append("\" WHERE default_type = \"default_result_currency\"").toString());
    }

    public void setUserAgreement(String accpeted_rejected) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(accpeted_rejected).append("\" WHERE default_type = \"user_agreement_accepted\"").toString());
    }

    public void unselectAllCurrencies() {
        this.mDb.execSQL("UPDATE currency SET exchange_rate_selected = 0");
    }

    public void updateAdPreferences(String ad_preferences) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(ad_preferences).append("\" WHERE default_type = \"ad_preferences\"").toString());
    }

    public void updateDefaultLocation(String default_location) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(default_location).append("\" WHERE default_type = \"default_location\"").toString());
    }

    public void updateDefaultNewsCurrency(String currency_type) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(currency_type).append("\" WHERE default_type = \"default_news_currency\"").toString());
    }

    public void updateDefaultPage(String default_page) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(default_page).append("\" WHERE default_type = \"default_page\"").toString());
    }

    public void updateExchangeRate(String currency_type, double exchange_rate, String rateDate) {
        this.mDb.execSQL(new StringBuilder("UPDATE currency SET exchange_rate = ").append(exchange_rate).append(" , spare_1 = \"").append(rateDate).append("\" WHERE currency_type = \"").append(currency_type).append("\" ").toString());
    }

    public void updateExchangeRateSelected(String currency_type, int is_selected) {
        this.mDb.execSQL(new StringBuilder("UPDATE currency SET exchange_rate_selected = ").append(is_selected).append(" WHERE currency_type = \"").append(currency_type).append("\" ").toString());
    }

    public void updateRateDate(String xrate_refresh_date) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(xrate_refresh_date).append("\" WHERE default_type = \"refresh_date\"").toString());
    }

    public void updateVisitNumber(String visit_number) {
        this.mDb.execSQL(new StringBuilder("UPDATE defaults SET default_value = \"").append(visit_number).append("\" WHERE default_type = \"visit_number\"").toString());
    }

    public void upgradeToAdsFreeVersion() {
        this.mDb.execSQL("INSERT INTO defaults VALUES (\"ads_free_version\",\"true\")");
    }
}