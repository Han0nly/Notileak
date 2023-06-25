.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 210
    sget-object v1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 212
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 219
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 220
    sget-object v1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 225
    return-void

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 235
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 13

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const-class v1, Landroid/support/v4/util/ArrayMap;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v2, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 141
    sget-object v2, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 142
    iput-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v3, v2, v0

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v3, v2, v0

    move-object v7, v3

    check-cast v7, [I

    move-object v6, v7

    check-cast v6, [I

    iput-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v0, 0x1

    const/4 v8, 0x0

    aput-object v8, v2, v0

    const/4 v0, 0x0

    const/4 v8, 0x0

    aput-object v8, v2, v0

    .line 146
    sget p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 149
    const-class v1, Landroid/support/v4/util/ArrayMap;

    .line 149
    monitor-exit v1

    .line 170
    :goto_0
    return-void

    .line 151
    :cond_0
    const-class v1, Landroid/support/v4/util/ArrayMap;

    .line 151
    monitor-exit v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_1
    :goto_1
    new-array v6, p1, [I

    iput-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 169
    shl-int/lit8 p1, p1, 0x1

    new-array v4, p1, [Ljava/lang/Object;

    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 151
    :catch_0
    move-exception v9

    :try_start_1
    const-class v1, Landroid/support/v4/util/ArrayMap;

    monitor-exit v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    throw v9

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-class v1, Landroid/support/v4/util/ArrayMap;

    monitor-enter v1

    .line 154
    :try_start_2
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 155
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 156
    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v3, v4, v0

    move-object v10, v3

    check-cast v10, [Ljava/lang/Object;

    move-object v2, v10

    check-cast v2, [Ljava/lang/Object;

    sput-object v2, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v3, v4, v0

    move-object v11, v3

    check-cast v11, [I

    move-object v6, v11

    check-cast v6, [I

    iput-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v0, 0x1

    const/4 v8, 0x0

    aput-object v8, v4, v0

    const/4 v0, 0x0

    const/4 v8, 0x0

    aput-object v8, v4, v0

    .line 160
    sget p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 163
    const-class v1, Landroid/support/v4/util/ArrayMap;

    .line 163
    monitor-exit v1

    goto :goto_0

    .line 165
    :catch_1
    move-exception v12

    const-class v1, Landroid/support/v4/util/ArrayMap;

    monitor-exit v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    throw v12

    :cond_3
    :try_start_3
    const-class v1, Landroid/support/v4/util/ArrayMap;

    monitor-exit v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 7

    .line 173
    array-length v0, p0

    .line 173
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 175
    :try_start_0
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 175
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    sget-object v3, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, p1, v1

    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 178
    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 p2, v0, -0x1

    :goto_0
    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    const/4 v4, 0x0

    aput-object v4, p1, p2

    .line 178
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 181
    :cond_0
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 182
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 186
    :cond_1
    const-class v2, Landroid/support/v4/util/ArrayMap;

    .line 186
    monitor-exit v2

    .line 202
    :cond_2
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v5

    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-exit v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    throw v5

    .line 187
    :cond_3
    array-length v0, p0

    .line 187
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-enter v2

    .line 189
    :try_start_1
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 189
    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    sget-object v3, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, p1, v1

    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 192
    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    const/4 v4, 0x0

    aput-object v4, p1, v0

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 195
    :cond_4
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 196
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 200
    :cond_5
    const-class v2, Landroid/support/v4/util/ArrayMap;

    .line 200
    monitor-exit v2

    goto :goto_1

    :catch_1
    move-exception v6

    const-class v2, Landroid/support/v4/util/ArrayMap;

    monitor-exit v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    throw v6
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 241
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v1, v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 243
    sget-object v1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 244
    sget-object v2, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 247
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 303
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 303
    const/4 v1, 0x1

    return v1

    .line 303
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 7

    .line 254
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 255
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 256
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 257
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 258
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v1, :cond_0

    .line 259
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_0
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v0, v2, v1}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 264
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 551
    return v0

    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 526
    move-object v3, p1

    .line 526
    check-cast v3, Ljava/util/Map;

    .line 526
    move-object v2, v3

    .line 527
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/4 v0, 0x0

    return v0

    .line 532
    :cond_2
    const/4 v5, 0x0

    :goto_0
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v5, v4, :cond_0

    .line 533
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 534
    invoke-virtual {p0, v5}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 535
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_4

    if-nez v7, :cond_3

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    const/4 v0, 0x0

    return v0

    .line 540
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_5

    .line 540
    const/4 v0, 0x0

    return v0

    .line 532
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 544
    :catch_0
    move-exception v8

    .line 532
    const/4 v0, 0x0

    return v0

    .line 546
    :catch_1
    move-exception v9

    .line 532
    const/4 v0, 0x0

    return v0

    .line 532
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object p1, v1, v0

    return-object p1

    .line 313
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public hashCode()I
    .locals 9

    .line 559
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 560
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 561
    const/4 v2, 0x0

    .line 562
    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    :goto_0
    if-ge v3, v5, :cond_1

    .line 563
    aget-object v6, v1, v4

    .line 564
    aget v7, v0, v3

    if-nez v6, :cond_0

    const/4 v8, 0x0

    :goto_1
    xor-int v7, v8, v7

    add-int/2addr v2, v7

    .line 562
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    goto :goto_1

    .line 566
    :cond_1
    return v2
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 8

    .line 62
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v0, :cond_1

    .line 66
    const/4 v1, -0x1

    .line 96
    :cond_0
    return v1

    .line 69
    :cond_1
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v2, v0, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-ltz v1, :cond_0

    .line 77
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v5, v3, v4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 83
    add-int/lit8 v4, v1, 0x1

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v7, v2, v4

    if-ne v7, p2, :cond_3

    .line 84
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v4, 0x1

    aget-object v5, v3, v7

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v4

    .line 83
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_3
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_5

    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v7, v2, v0

    if-ne v7, p2, :cond_5

    .line 89
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v0, 0x1

    aget-object v5, v3, v7

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v0

    .line 88
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 96
    :cond_5
    not-int v1, v4

    return v1
.end method

.method indexOfNull()I
    .locals 8

    .line 100
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v0, :cond_1

    .line 104
    const/4 v1, -0x1

    .line 134
    :cond_0
    return v1

    .line 107
    :cond_1
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-ltz v1, :cond_0

    .line 115
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v6, v4, v5

    if-eqz v6, :cond_0

    .line 121
    add-int/lit8 v5, v1, 0x1

    :goto_0
    if-ge v5, v0, :cond_3

    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v7, v2, v5

    if-nez v7, :cond_3

    .line 122
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v5, 0x1

    aget-object v6, v4, v7

    if-nez v6, :cond_2

    return v5

    .line 121
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    :cond_3
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_5

    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v7, v2, v0

    if-nez v7, :cond_5

    .line 127
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v0, 0x1

    aget-object v6, v4, v7

    if-nez v6, :cond_4

    return v0

    .line 126
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 134
    :cond_5
    not-int v1, v5

    return v1
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 6

    .line 277
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v1, v0, 0x2

    .line 278
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 280
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 281
    aget-object p1, v2, v0

    if-nez p1, :cond_0

    .line 282
    shr-int/lit8 v0, v0, 0x1

    .line 292
    return v0

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_3

    .line 287
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    shr-int/lit8 v0, v0, 0x1

    return v0

    .line 286
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 286
    :cond_3
    const/4 v5, -0x1

    return v5
.end method

.method public isEmpty()Z
    .locals 2

    .line 352
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-gtz v0, :cond_0

    .line 352
    const/4 v1, 0x1

    return v1

    .line 352
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object v1, v0, p1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 367
    const/4 v1, 0x0

    .line 368
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_1

    .line 374
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 375
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object p1, v3, v0

    .line 376
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v3, v0

    .line 411
    return-object p1

    .line 370
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 371
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0

    .line 380
    :cond_1
    not-int v4, v2

    .line 381
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v5

    if-lt v2, v6, :cond_4

    .line 382
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 382
    const/16 v7, 0x8

    if-lt v6, v7, :cond_6

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shr-int/lit8 v0, v0, 0x1

    add-int v0, v6, v0

    .line 387
    :cond_2
    :goto_1
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 388
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 389
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 391
    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v8

    if-lez v6, :cond_3

    .line 393
    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    iget-object v10, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v6, v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v7, v10, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    :cond_3
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v5, v3, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 400
    :cond_4
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v4, v6, :cond_5

    .line 403
    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v6, v4, 0x1

    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v0, v4

    invoke-static {v8, v4, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v10, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, v4, 0x1

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v0, 0x1

    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v10, v6, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_5
    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aput v1, v8, v4

    .line 408
    iget-object v10, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, v4, 0x1

    aput-object p1, v10, v6

    .line 409
    iget-object v10, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    aput-object p2, v10, v6

    .line 410
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v11, 0x0

    return-object v11

    .line 382
    :cond_6
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 382
    const/4 v7, 0x4

    if-ge v6, v7, :cond_2

    const/4 v0, 0x4

    goto :goto_1
.end method

.method public putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .line 419
    iget v0, p1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 420
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->ensureCapacity(I)V

    .line 421
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v1, :cond_1

    if-lez v0, :cond_0

    .line 423
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget-object v6, p1, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v6, v4, v7, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 432
    :cond_0
    return-void

    .line 428
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 429
    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    .line 443
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 446
    return-object p1

    .line 441
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 455
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v3, v1, v2

    .line 456
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 456
    const/4 v4, 0x1

    if-gt v2, v4, :cond_1

    .line 459
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v5, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 460
    sget-object v5, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 461
    sget-object v1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 462
    const/4 v4, 0x0

    .line 462
    iput v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 502
    :cond_0
    return-object v3

    .line 464
    :cond_1
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v2, v5

    const/16 v4, 0x8

    if-le v2, v4, :cond_4

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v5

    div-int/lit8 v6, v6, 0x3

    if-ge v2, v6, :cond_4

    .line 468
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 468
    const/16 v4, 0x8

    if-le v6, v4, :cond_2

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shr-int/lit8 v2, v2, 0x1

    add-int v0, v6, v2

    .line 472
    :cond_2
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 473
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 474
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 476
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez p1, :cond_3

    .line 479
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 479
    const/4 v4, 0x0

    .line 479
    const/4 v8, 0x0

    invoke-static {v5, v4, v7, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iget-object v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v4, v9, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    :cond_3
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge p1, v6, :cond_0

    .line 485
    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v2, p1

    invoke-static {v5, v6, v7, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    add-int/lit8 v6, p1, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget-object v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, p1, 0x1

    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v6, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 490
    :cond_4
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 491
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge p1, v6, :cond_5

    .line 494
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v6, p1, 0x1

    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v2, p1

    invoke-static {v7, v6, v5, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    iget-object v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v9, v6, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    :cond_5
    iget-object v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v6, v6, 0x1

    const/4 v10, 0x0

    aput-object v10, v9, v6

    .line 499
    iget-object v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x0

    aput-object v10, v9, v6

    return-object v3
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 342
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 343
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 344
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 345
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 509
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 578
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const-string v1, "{}"

    .line 603
    return-object v1

    .line 582
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v3, v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x7b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v3, v5, :cond_4

    if-lez v3, :cond_1

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_2

    .line 590
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    :goto_1
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {p0, v3}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_3

    .line 597
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 584
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    :cond_2
    const-string v1, "(this Map)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 584
    :cond_3
    const-string v1, "(this Map)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 584
    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object v1, v0, p1

    return-object v1
.end method
