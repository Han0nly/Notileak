.class public Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v2, 0x18

    new-array v1, v2, [C

    sput-object v1, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 1

    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    .line 40
    :cond_0
    add-int/lit8 p3, p1, 0x3

    .line 48
    return p3

    .line 40
    :cond_1
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    if-eqz p2, :cond_3

    .line 40
    const/4 v0, 0x2

    if-lt p3, v0, :cond_3

    .line 43
    :cond_2
    add-int/lit8 p3, p1, 0x2

    return p3

    :cond_3
    if-nez p2, :cond_4

    if-lez p0, :cond_5

    .line 46
    :cond_4
    add-int/lit8 p3, p1, 0x1

    return p3

    .line 46
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 7

    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-nez v0, :cond_0

    const-string v3, "--"

    invoke-virtual {p4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    sub-long v4, p0, p2

    .line 173
    const/4 v6, 0x0

    invoke-static {v4, v5, p4, v6}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    goto :goto_0
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 165
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 5

    .line 156
    sget-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p3

    .line 158
    new-instance v1, Ljava/lang/String;

    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catch_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    throw v4
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 5

    .line 148
    sget-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    .line 150
    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 150
    const/4 v2, 0x0

    invoke-virtual {p2, v3, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catch_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    throw v4
.end method

.method private static formatDurationLocked(JI)I
    .locals 29

    .line 76
    sget-object v6, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v7, v6

    move/from16 v0, p2

    if-ge v7, v0, :cond_0

    move/from16 v0, p2

    new-array v6, v0, [C

    sput-object v6, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 80
    :cond_0
    sget-object v6, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const-wide/16 v9, 0x0

    cmp-long v8, p0, v9

    if-nez v8, :cond_2

    .line 84
    add-int/lit8 v7, p2, -0x1

    .line 84
    :goto_0
    const/4 v11, 0x0

    if-ge v11, v7, :cond_1

    const/4 v11, 0x0

    const/16 v12, 0x20

    aput-char v12, v6, v11

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    const/16 v12, 0x30

    aput-char v12, v6, v11

    const/4 v11, 0x1

    .line 143
    return v11

    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v8, p0, v9

    if-lez v8, :cond_6

    .line 94
    const/16 v13, 0x2b

    :goto_1
    const-wide/16 v9, 0x3e8

    rem-long v14, p0, v9

    long-to-int v0, v14

    move/from16 v16, v0

    const-wide/16 v9, 0x3e8

    div-long v14, p0, v9

    long-to-double v0, v14

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v7, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v11, 0x15180

    if-le v7, v11, :cond_3

    const v11, 0x15180

    div-int v19, v7, v11

    const v11, 0x15180

    mul-int v22, v11, v19

    sub-int v7, v7, v22

    :cond_3
    const/16 v11, 0xe10

    if-le v7, v11, :cond_4

    div-int/lit16 v0, v7, 0xe10

    move/from16 v20, v0

    move/from16 v0, v20

    .line 110
    mul-int/lit16 v0, v0, 0xe10

    move/from16 v22, v0

    sub-int v7, v7, v22

    :cond_4
    const/16 v11, 0x3c

    if-le v7, v11, :cond_5

    .line 113
    div-int/lit8 v21, v7, 0x3c

    .line 114
    mul-int/lit8 v22, v21, 0x3c

    sub-int v7, v7, v22

    :cond_5
    const/16 v22, 0x0

    if-eqz p2, :cond_b

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v24, 0x0

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v11, v12, v1}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v23

    if-lez v23, :cond_7

    const/16 v25, 0x1

    :goto_2
    const/4 v11, 0x1

    const/4 v12, 0x2

    move/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v11, v1, v12}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v26

    add-int v26, v23, v26

    if-lez v26, :cond_8

    const/16 v25, 0x1

    :goto_3
    const/4 v11, 0x1

    const/4 v12, 0x2

    move/from16 v0, v21

    move/from16 v1, v25

    invoke-static {v0, v11, v1, v12}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v23

    add-int v26, v26, v23

    if-lez v26, :cond_9

    const/16 v25, 0x1

    :goto_4
    const/4 v11, 0x1

    const/4 v12, 0x2

    move/from16 v0, v25

    invoke-static {v7, v11, v0, v12}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v23

    add-int v26, v26, v23

    if-lez v26, :cond_a

    const/4 v8, 0x3

    :goto_5
    const/4 v11, 0x2

    const/4 v12, 0x1

    move/from16 v0, v16

    invoke-static {v0, v11, v12, v8}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    add-int v26, v26, v23

    :goto_6
    move/from16 v0, v26

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    const/16 v11, 0x20

    aput-char v11, v6, v22

    .line 127
    add-int/lit8 v22, v22, 0x1

    .line 128
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 96
    :cond_6
    const/16 v13, 0x2d

    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_1

    :cond_7
    const/16 v25, 0x0

    goto :goto_2

    :cond_8
    const/16 v25, 0x0

    goto :goto_3

    :cond_9
    const/16 v25, 0x0

    goto :goto_4

    .line 124
    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    .line 132
    :cond_b
    aput-char v13, v6, v22

    .line 133
    add-int/lit8 v26, v22, 0x1

    .line 135
    move/from16 v23, v26

    if-eqz p2, :cond_c

    const/16 v25, 0x1

    :goto_7
    const/16 v11, 0x64

    const/4 v12, 0x0

    const/16 v24, 0x0

    move-object v0, v6

    move/from16 v1, v19

    move v2, v11

    move/from16 v3, v26

    move v4, v12

    move/from16 v5, v24

    invoke-static/range {v0 .. v5}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    const/16 v27, 0x1

    :goto_8
    if-eqz v25, :cond_e

    const/4 v8, 0x2

    :goto_9
    const/16 v11, 0x68

    move-object v0, v6

    move/from16 v1, v20

    move v2, v11

    move/from16 v3, v26

    move/from16 v4, v27

    move v5, v8

    invoke-static/range {v0 .. v5}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    const/16 v27, 0x1

    :goto_a
    if-eqz v25, :cond_10

    const/16 v28, 0x2

    :goto_b
    const/16 v11, 0x6d

    move-object v0, v6

    move/from16 v1, v21

    move v2, v11

    move/from16 v3, v26

    move/from16 v4, v27

    move/from16 v5, v28

    invoke-static/range {v0 .. v5}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    const/16 v27, 0x1

    :goto_c
    if-eqz v25, :cond_12

    const/16 v28, 0x2

    :goto_d
    const/16 v11, 0x73

    move-object v0, v6

    move v1, v7

    move v2, v11

    move/from16 v3, v26

    move/from16 v4, v27

    move/from16 v5, v28

    invoke-static/range {v0 .. v5}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v26

    if-eqz v25, :cond_13

    move/from16 v0, v26

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    const/16 v28, 0x3

    :goto_e
    const/16 v11, 0x6d

    const/4 v12, 0x1

    move-object v0, v6

    move/from16 v1, v16

    move v2, v11

    move/from16 v3, v26

    move v4, v12

    move/from16 v5, v28

    invoke-static/range {v0 .. v5}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v26

    const/16 v11, 0x73

    aput-char v11, v6, v26

    .line 143
    add-int/lit8 v7, v26, 0x1

    return v7

    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_7

    :cond_d
    const/16 v27, 0x0

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    goto :goto_9

    :cond_f
    const/16 v27, 0x0

    goto :goto_a

    :cond_10
    const/16 v28, 0x0

    goto :goto_b

    :cond_11
    const/16 v27, 0x0

    goto :goto_c

    :cond_12
    const/16 v28, 0x0

    goto :goto_d

    :cond_13
    const/16 v28, 0x0

    goto :goto_e
.end method

.method private static printField([CICIZI)I
    .locals 5

    if-nez p4, :cond_0

    if-lez p1, :cond_7

    .line 54
    :cond_0
    move v0, p3

    if-eqz p4, :cond_1

    .line 54
    const/4 v1, 0x3

    if-ge p5, v1, :cond_2

    .line 54
    :cond_1
    const/16 v1, 0x63

    if-le p1, v1, :cond_3

    .line 56
    :cond_2
    div-int/lit8 v2, p1, 0x64

    .line 57
    add-int/lit8 v3, v2, 0x30

    int-to-char v4, v3

    aput-char v4, p0, p3

    .line 58
    add-int/lit8 p3, p3, 0x1

    .line 59
    mul-int/lit8 v3, v2, 0x64

    sub-int/2addr p1, v3

    :cond_3
    if-eqz p4, :cond_4

    const/4 v1, 0x2

    if-ge p5, v1, :cond_5

    :cond_4
    const/16 v1, 0x9

    if-gt p1, v1, :cond_5

    if-eq v0, p3, :cond_6

    .line 62
    :cond_5
    div-int/lit8 v3, p1, 0xa

    .line 63
    add-int/lit8 v0, v3, 0x30

    int-to-char v4, v0

    aput-char v4, p0, p3

    .line 64
    add-int/lit8 p3, p3, 0x1

    .line 65
    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr p1, v3

    .line 67
    :cond_6
    add-int/lit8 v3, p1, 0x30

    int-to-char v4, v3

    aput-char v4, p0, p3

    .line 68
    add-int/lit8 v3, p3, 0x1

    .line 69
    aput-char p2, p0, v3

    .line 70
    add-int/lit8 p3, v3, 0x1

    .line 72
    :cond_7
    return p3
.end method
