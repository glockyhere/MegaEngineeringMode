.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 45
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z

    .line 56
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 10
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z
    .param p2, "tz"    # Ljava/util/TimeZone;

    .line 68
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 69
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    const-string v1, "yyyy-MM-ddThh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 73
    .local v1, "capacity":I
    if-eqz p1, :cond_0

    const-string v2, ".sss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 74
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Z"

    goto :goto_1

    :cond_1
    const-string v2, "+hh:mm"

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v2, "formatted":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const-string v5, "yyyy"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 78
    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    const-string v3, "MM"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v5, "dd"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 82
    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v5, "hh"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v3, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 84
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v7, "mm"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v8, "ss"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 88
    if-eqz p1, :cond_2

    .line 89
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v8, "sss"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 93
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 94
    .local v6, "offset":I
    if-eqz v6, :cond_4

    .line 95
    const v8, 0xea60

    div-int v9, v6, v8

    div-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 96
    .local v9, "hours":I
    div-int v8, v6, v8

    rem-int/lit8 v8, v8, 0x3c

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 97
    .local v8, "minutes":I
    if-gez v6, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x2b

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v9, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v8, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 101
    .end local v8    # "minutes":I
    .end local v9    # "hours":I
    goto :goto_3

    .line 102
    :cond_4
    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 345
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 346
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 347
    .local v1, "c":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 345
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    return v0

    .line 349
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "length"    # I

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "strValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 336
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 338
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 23
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 124
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "\'"

    const/4 v4, 0x0

    .line 126
    .local v4, "fail":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 129
    .local v0, "offset":I
    add-int/lit8 v5, v0, 0x4

    .end local v0    # "offset":I
    .local v5, "offset":I
    invoke-static {v1, v0, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v0

    .line 130
    .local v0, "year":I
    const/16 v6, 0x2d

    invoke-static {v1, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    add-int/lit8 v5, v5, 0x1

    .line 135
    :cond_0
    add-int/lit8 v7, v5, 0x2

    .end local v5    # "offset":I
    .local v7, "offset":I
    invoke-static {v1, v5, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v5

    .line 136
    .local v5, "month":I
    invoke-static {v1, v7, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 137
    add-int/lit8 v7, v7, 0x1

    .line 141
    :cond_1
    add-int/lit8 v8, v7, 0x2

    .end local v7    # "offset":I
    .local v8, "offset":I
    invoke-static {v1, v7, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 143
    .local v7, "day":I
    const/4 v9, 0x0

    .line 144
    .local v9, "hour":I
    const/4 v10, 0x0

    .line 145
    .local v10, "minutes":I
    const/4 v11, 0x0

    .line 146
    .local v11, "seconds":I
    const/4 v12, 0x0

    .line 149
    .local v12, "milliseconds":I
    const/16 v13, 0x54

    invoke-static {v1, v8, v13}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    .line 151
    .local v13, "hasT":Z
    if-nez v13, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v14, v8, :cond_2

    .line 152
    new-instance v6, Ljava/util/GregorianCalendar;

    add-int/lit8 v14, v5, -0x1

    invoke-direct {v6, v0, v14, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 154
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 155
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 266
    .end local v0    # "year":I
    .end local v5    # "month":I
    .end local v6    # "calendar":Ljava/util/Calendar;
    .end local v7    # "day":I
    .end local v8    # "offset":I
    .end local v9    # "hour":I
    .end local v10    # "minutes":I
    .end local v11    # "seconds":I
    .end local v12    # "milliseconds":I
    .end local v13    # "hasT":Z
    :catch_0
    move-exception v0

    move-object/from16 v20, v4

    goto/16 :goto_a

    .line 264
    :catch_1
    move-exception v0

    move-object/from16 v20, v4

    goto/16 :goto_b

    .line 262
    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    goto/16 :goto_c

    .line 158
    .restart local v0    # "year":I
    .restart local v5    # "month":I
    .restart local v7    # "day":I
    .restart local v8    # "offset":I
    .restart local v9    # "hour":I
    .restart local v10    # "minutes":I
    .restart local v11    # "seconds":I
    .restart local v12    # "milliseconds":I
    .restart local v13    # "hasT":Z
    :cond_2
    const/16 v15, 0x5a

    if-eqz v13, :cond_b

    .line 161
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v8, 0x2

    .end local v8    # "offset":I
    .local v6, "offset":I
    :try_start_2
    invoke-static {v1, v8, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    move v9, v8

    .line 162
    const/16 v8, 0x3a

    invoke-static {v1, v6, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 163
    add-int/lit8 v6, v6, 0x1

    .line 166
    :cond_3
    add-int/lit8 v14, v6, 0x2

    .end local v6    # "offset":I
    .local v14, "offset":I
    invoke-static {v1, v6, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    move v10, v6

    .line 167
    invoke-static {v1, v14, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 168
    add-int/lit8 v14, v14, 0x1

    move v8, v14

    goto :goto_0

    .line 167
    :cond_4
    move v8, v14

    .line 171
    .end local v14    # "offset":I
    .restart local v8    # "offset":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_a

    .line 172
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 173
    .local v6, "c":C
    if-eq v6, v15, :cond_9

    const/16 v14, 0x2b

    if-eq v6, v14, :cond_9

    const/16 v14, 0x2d

    if-eq v6, v14, :cond_9

    .line 174
    add-int/lit8 v14, v8, 0x2

    .end local v8    # "offset":I
    .restart local v14    # "offset":I
    invoke-static {v1, v8, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v8

    .line 175
    .end local v11    # "seconds":I
    .local v8, "seconds":I
    const/16 v11, 0x3b

    if-le v8, v11, :cond_5

    const/16 v11, 0x3f

    if-ge v8, v11, :cond_5

    const/16 v8, 0x3b

    move v11, v8

    goto :goto_1

    .line 177
    :cond_5
    move v11, v8

    .end local v8    # "seconds":I
    .restart local v11    # "seconds":I
    :goto_1
    const/16 v8, 0x2e

    invoke-static {v1, v14, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 178
    add-int/lit8 v14, v14, 0x1

    .line 179
    add-int/lit8 v8, v14, 0x1

    invoke-static {v1, v8}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v8

    .line 180
    .local v8, "endOffset":I
    add-int/lit8 v15, v14, 0x3

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 181
    .local v15, "parseEndOffset":I
    invoke-static {v1, v14, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v19
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6

    .line 183
    .local v19, "fraction":I
    move-object/from16 v20, v4

    .end local v4    # "fail":Ljava/lang/Exception;
    .local v20, "fail":Ljava/lang/Exception;
    sub-int v4, v15, v14

    move/from16 v21, v6

    const/4 v6, 0x1

    .end local v6    # "c":C
    .local v21, "c":C
    if-eq v4, v6, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    .line 191
    move/from16 v4, v19

    move v12, v4

    .end local v12    # "milliseconds":I
    .local v4, "milliseconds":I
    goto :goto_2

    .line 185
    .end local v4    # "milliseconds":I
    .restart local v12    # "milliseconds":I
    :cond_6
    mul-int/lit8 v4, v19, 0xa

    .line 186
    .end local v12    # "milliseconds":I
    .restart local v4    # "milliseconds":I
    move v12, v4

    goto :goto_2

    .line 188
    .end local v4    # "milliseconds":I
    .restart local v12    # "milliseconds":I
    :cond_7
    mul-int/lit8 v4, v19, 0x64

    .line 189
    .end local v12    # "milliseconds":I
    .restart local v4    # "milliseconds":I
    move v12, v4

    .line 193
    .end local v4    # "milliseconds":I
    .restart local v12    # "milliseconds":I
    :goto_2
    move v4, v8

    .end local v14    # "offset":I
    .local v4, "offset":I
    goto :goto_3

    .line 177
    .end local v8    # "endOffset":I
    .end local v15    # "parseEndOffset":I
    .end local v19    # "fraction":I
    .end local v20    # "fail":Ljava/lang/Exception;
    .end local v21    # "c":C
    .local v4, "fail":Ljava/lang/Exception;
    .restart local v6    # "c":C
    .restart local v14    # "offset":I
    :cond_8
    move-object/from16 v20, v4

    move/from16 v21, v6

    .end local v4    # "fail":Ljava/lang/Exception;
    .end local v6    # "c":C
    .restart local v20    # "fail":Ljava/lang/Exception;
    .restart local v21    # "c":C
    move v8, v14

    goto :goto_3

    .line 173
    .end local v14    # "offset":I
    .end local v20    # "fail":Ljava/lang/Exception;
    .end local v21    # "c":C
    .restart local v4    # "fail":Ljava/lang/Exception;
    .restart local v6    # "c":C
    .local v8, "offset":I
    :cond_9
    move-object/from16 v20, v4

    move/from16 v21, v6

    .end local v4    # "fail":Ljava/lang/Exception;
    .end local v6    # "c":C
    .restart local v20    # "fail":Ljava/lang/Exception;
    .restart local v21    # "c":C
    goto :goto_3

    .line 171
    .end local v20    # "fail":Ljava/lang/Exception;
    .end local v21    # "c":C
    .restart local v4    # "fail":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v20, v4

    .end local v4    # "fail":Ljava/lang/Exception;
    .restart local v20    # "fail":Ljava/lang/Exception;
    goto :goto_3

    .line 158
    .end local v20    # "fail":Ljava/lang/Exception;
    .restart local v4    # "fail":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v20, v4

    .line 200
    .end local v4    # "fail":Ljava/lang/Exception;
    .restart local v20    # "fail":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_14

    .line 204
    const/4 v4, 0x0

    .line 205
    .local v4, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 207
    .local v6, "timezoneIndicator":C
    const/4 v14, 0x5

    const/16 v15, 0x5a

    if-ne v6, v15, :cond_c

    .line 208
    sget-object v15, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    move-object v4, v15

    .line 209
    const/4 v15, 0x1

    add-int/2addr v8, v15

    move/from16 v18, v6

    goto/16 :goto_9

    .line 210
    :cond_c
    const/16 v15, 0x2b

    if-eq v6, v15, :cond_e

    const/16 v15, 0x2d

    if-ne v6, v15, :cond_d

    move-object/from16 v16, v4

    goto :goto_4

    .line 245
    :cond_d
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    .end local v4    # "timezone":Ljava/util/TimeZone;
    .local v16, "timezone":Ljava/util/TimeZone;
    const-string v4, "Invalid time zone indicator \'"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local v20    # "fail":Ljava/lang/Exception;
    .end local p0    # "date":Ljava/lang/String;
    .end local p1    # "pos":Ljava/text/ParsePosition;
    throw v14

    .line 210
    .end local v16    # "timezone":Ljava/util/TimeZone;
    .restart local v4    # "timezone":Ljava/util/TimeZone;
    .restart local v20    # "fail":Ljava/lang/Exception;
    .restart local p0    # "date":Ljava/lang/String;
    .restart local p1    # "pos":Ljava/text/ParsePosition;
    :cond_e
    move-object/from16 v16, v4

    .line 211
    .end local v4    # "timezone":Ljava/util/TimeZone;
    .restart local v16    # "timezone":Ljava/util/TimeZone;
    :goto_4
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "timezoneOffset":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v15, v14, :cond_f

    move-object v14, v4

    goto :goto_5

    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "00"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_5
    move-object v4, v14

    .line 216
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v8, v14

    .line 218
    const-string v14, "+0000"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    const-string v14, "+00:00"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v19, v4

    move/from16 v18, v6

    move/from16 v21, v8

    goto/16 :goto_7

    .line 225
    :cond_10
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GMT"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, "timezoneId":Ljava/lang/String;
    invoke-static {v14}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 230
    .end local v16    # "timezone":Ljava/util/TimeZone;
    .local v15, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 231
    .local v18, "act":Ljava/lang/String;
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    .end local v18    # "act":Ljava/lang/String;
    .local v4, "act":Ljava/lang/String;
    .local v19, "timezoneOffset":Ljava/lang/String;
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_12

    .line 237
    move/from16 v18, v6

    .end local v6    # "timezoneIndicator":C
    .local v18, "timezoneIndicator":C
    const-string v6, ":"

    move/from16 v21, v8

    .end local v8    # "offset":I
    .local v21, "offset":I
    const-string v8, ""

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "cleaned":Ljava/lang/String;
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_6

    .line 239
    :cond_11
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v16, v4

    .end local v4    # "act":Ljava/lang/String;
    .local v16, "act":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v6

    .end local v6    # "cleaned":Ljava/lang/String;
    .local v22, "cleaned":Ljava/lang/String;
    const-string v6, "Mismatching time zone indicator: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " given, resolves to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local v20    # "fail":Ljava/lang/Exception;
    .end local p0    # "date":Ljava/lang/String;
    .end local p1    # "pos":Ljava/text/ParsePosition;
    throw v8

    .line 231
    .end local v16    # "act":Ljava/lang/String;
    .end local v18    # "timezoneIndicator":C
    .end local v21    # "offset":I
    .end local v22    # "cleaned":Ljava/lang/String;
    .restart local v4    # "act":Ljava/lang/String;
    .local v6, "timezoneIndicator":C
    .restart local v8    # "offset":I
    .restart local v20    # "fail":Ljava/lang/Exception;
    .restart local p0    # "date":Ljava/lang/String;
    .restart local p1    # "pos":Ljava/text/ParsePosition;
    :cond_12
    move-object/from16 v16, v4

    move/from16 v18, v6

    move/from16 v21, v8

    .line 244
    .end local v4    # "act":Ljava/lang/String;
    .end local v6    # "timezoneIndicator":C
    .end local v8    # "offset":I
    .end local v14    # "timezoneId":Ljava/lang/String;
    .end local v19    # "timezoneOffset":Ljava/lang/String;
    .restart local v18    # "timezoneIndicator":C
    .restart local v21    # "offset":I
    :goto_6
    move-object v4, v15

    goto :goto_8

    .line 218
    .end local v15    # "timezone":Ljava/util/TimeZone;
    .end local v18    # "timezoneIndicator":C
    .end local v21    # "offset":I
    .local v4, "timezoneOffset":Ljava/lang/String;
    .restart local v6    # "timezoneIndicator":C
    .restart local v8    # "offset":I
    .local v16, "timezone":Ljava/util/TimeZone;
    :cond_13
    move-object/from16 v19, v4

    move/from16 v18, v6

    move/from16 v21, v8

    .line 219
    .end local v4    # "timezoneOffset":Ljava/lang/String;
    .end local v6    # "timezoneIndicator":C
    .end local v8    # "offset":I
    .restart local v18    # "timezoneIndicator":C
    .restart local v19    # "timezoneOffset":Ljava/lang/String;
    .restart local v21    # "offset":I
    :goto_7
    sget-object v4, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 244
    .end local v16    # "timezone":Ljava/util/TimeZone;
    .end local v19    # "timezoneOffset":Ljava/lang/String;
    .local v4, "timezone":Ljava/util/TimeZone;
    :goto_8
    move/from16 v8, v21

    .line 248
    .end local v21    # "offset":I
    .restart local v8    # "offset":I
    :goto_9
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 249
    .local v6, "calendar":Ljava/util/Calendar;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/util/Calendar;->setLenient(Z)V

    .line 250
    const/4 v14, 0x1

    invoke-virtual {v6, v14, v0}, Ljava/util/Calendar;->set(II)V

    .line 251
    add-int/lit8 v14, v5, -0x1

    const/4 v15, 0x2

    invoke-virtual {v6, v15, v14}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/4 v14, 0x5

    invoke-virtual {v6, v14, v7}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v14, 0xb

    invoke-virtual {v6, v14, v9}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v14, 0xc

    invoke-virtual {v6, v14, v10}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v14, 0xd

    invoke-virtual {v6, v14, v11}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v14, 0xe

    invoke-virtual {v6, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 258
    invoke-virtual {v2, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 259
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    return-object v3

    .line 201
    .end local v4    # "timezone":Ljava/util/TimeZone;
    .end local v6    # "calendar":Ljava/util/Calendar;
    .end local v18    # "timezoneIndicator":C
    :cond_14
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "No time zone indicator"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v20    # "fail":Ljava/lang/Exception;
    .end local p0    # "date":Ljava/lang/String;
    .end local p1    # "pos":Ljava/text/ParsePosition;
    throw v4
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 266
    .end local v0    # "year":I
    .end local v5    # "month":I
    .end local v7    # "day":I
    .end local v8    # "offset":I
    .end local v9    # "hour":I
    .end local v10    # "minutes":I
    .end local v11    # "seconds":I
    .end local v12    # "milliseconds":I
    .end local v13    # "hasT":Z
    .restart local v20    # "fail":Ljava/lang/Exception;
    .restart local p0    # "date":Ljava/lang/String;
    .restart local p1    # "pos":Ljava/text/ParsePosition;
    :catch_3
    move-exception v0

    goto :goto_a

    .line 264
    :catch_4
    move-exception v0

    goto :goto_b

    .line 262
    :catch_5
    move-exception v0

    goto :goto_c

    .line 266
    .end local v20    # "fail":Ljava/lang/Exception;
    .local v4, "fail":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    move-object/from16 v20, v4

    .line 267
    .end local v4    # "fail":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v20    # "fail":Ljava/lang/Exception;
    :goto_a
    move-object v4, v0

    .end local v20    # "fail":Ljava/lang/Exception;
    .restart local v4    # "fail":Ljava/lang/Exception;
    goto :goto_e

    .line 264
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v0

    move-object/from16 v20, v4

    .line 265
    .end local v4    # "fail":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v20    # "fail":Ljava/lang/Exception;
    :goto_b
    move-object v4, v0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v20    # "fail":Ljava/lang/Exception;
    .restart local v4    # "fail":Ljava/lang/Exception;
    goto :goto_d

    .line 262
    :catch_8
    move-exception v0

    move-object/from16 v20, v4

    .line 263
    .end local v4    # "fail":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v20    # "fail":Ljava/lang/Exception;
    :goto_c
    move-object v4, v0

    .line 268
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v20    # "fail":Ljava/lang/Exception;
    .restart local v4    # "fail":Ljava/lang/Exception;
    :goto_d
    nop

    .line 269
    :goto_e
    if-nez v1, :cond_15

    const/4 v0, 0x0

    goto :goto_f

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "input":Ljava/lang/String;
    :goto_f
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "msg":Ljava/lang/String;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 272
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    :cond_17
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse date ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v5, "ex":Ljava/text/ParseException;
    invoke-virtual {v5, v4}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 276
    throw v5
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 301
    if-ltz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    .line 305
    move v0, p1

    .line 306
    .local v0, "i":I
    const/4 v1, 0x0

    .line 308
    .local v1, "result":I
    const-string v2, "Invalid number: "

    const/16 v3, 0xa

    if-ge v0, p2, :cond_1

    .line 309
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 310
    .local v0, "digit":I
    if-ltz v0, :cond_0

    .line 313
    neg-int v1, v0

    move v0, v4

    goto :goto_0

    .line 311
    :cond_0
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    .end local v4    # "i":I
    .local v0, "i":I
    :cond_1
    :goto_0
    if-ge v0, p2, :cond_3

    .line 316
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 317
    .local v0, "digit":I
    if-ltz v0, :cond_2

    .line 320
    mul-int/lit8 v1, v1, 0xa

    .line 321
    sub-int/2addr v1, v0

    move v0, v4

    goto :goto_0

    .line 318
    :cond_2
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    .end local v4    # "i":I
    .local v0, "i":I
    :cond_3
    neg-int v2, v1

    return v2

    .line 302
    .end local v0    # "i":I
    .end local v1    # "result":I
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
