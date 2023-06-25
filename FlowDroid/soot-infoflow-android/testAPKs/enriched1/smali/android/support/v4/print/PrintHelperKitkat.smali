.class Landroid/support/v4/print/PrintHelperKitkat;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field mScaleMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    .line 81
    const/4 v2, 0x2

    .line 81
    iput v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 83
    const/4 v2, 0x2

    .line 83
    iput v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 88
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 7

    .line 257
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 260
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, p1

    div-float v2, v1, v2

    const/4 v3, 0x2

    if-ne p4, v3, :cond_0

    .line 262
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float v4, p2

    div-float v4, v1, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 266
    :goto_0
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 269
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v2, p1

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    const v5, 0x40000000    # 2.0f

    div-float v2, v1, v5

    .line 271
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float v6, p2

    mul-float/2addr v6, v4

    sub-float v6, v1, v6

    const v5, 0x40000000    # 2.0f

    div-float v1, v6, v5

    .line 273
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 274
    return-object v0

    .line 264
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v4, p2

    div-float/2addr v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 508
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 508
    const-string v2, "bad argument to loadBitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_1
    const/4 v3, 0x0

    .line 512
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 517
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 520
    :cond_2
    return-object v5

    .line 518
    :catch_0
    move-exception v7

    const-string v2, "PrintHelperKitkat"

    const-string v8, "close fail "

    invoke-static {v2, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    .line 515
    :catch_1
    move-exception v9

    if-eqz v3, :cond_3

    .line 517
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 520
    :cond_3
    :goto_0
    throw v9

    .line 518
    :catch_2
    move-exception v10

    .line 520
    const-string v2, "PrintHelperKitkat"

    .line 520
    const-string v8, "close fail "

    invoke-static {v2, v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 18

    if-lez p2, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 458
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 458
    const-string v4, "bad argument to getScaledBitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    :cond_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 462
    const/4 v6, 0x1

    .line 462
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 463
    invoke-direct {v0, v1, v5}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 465
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 466
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v7, :cond_2

    if-gtz v8, :cond_3

    .line 466
    :cond_2
    const/4 v9, 0x0

    .line 498
    return-object v9

    .line 474
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 476
    const/4 v11, 0x1

    :goto_0
    move/from16 v0, p2

    if-le v10, v0, :cond_4

    .line 478
    ushr-int/lit8 v10, v10, 0x1

    .line 479
    shl-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    if-lez v11, :cond_2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/2addr v7, v11

    if-lez v7, :cond_2

    move-object/from16 v0, p0

    .line 487
    iget-object v12, v0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 488
    :try_start_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, p0

    .line 489
    iget-object v5, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    move-object/from16 v0, p0

    .line 490
    iget-object v5, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v11, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    .line 491
    iget-object v5, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 492
    monitor-exit v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 494
    invoke-direct {v0, v1, v5}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v0, p0

    .line 496
    iget-object v12, v0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_2
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 498
    monitor-exit v12

    return-object v13

    :catch_0
    move-exception v14

    monitor-exit v12
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    throw v14

    .line 492
    :catch_1
    move-exception v15

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    throw v15

    .line 496
    :catch_2
    move-exception v16

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_4
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 498
    monitor-exit v12
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    throw v16

    :catch_3
    move-exception v17

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    throw v17
.end method


# virtual methods
.method public getColorMode()I
    .locals 1

    .line 154
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 144
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 12

    if-nez p2, :cond_0

    .line 245
    :goto_0
    return-void

    .line 167
    :cond_0
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 168
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string v3, "print"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/print/PrintManager;

    move-object v4, v5

    .line 169
    sget-object v6, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .line 170
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 171
    sget-object v6, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    .line 173
    :cond_1
    new-instance v9, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v9}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v9, v6}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v9

    iget v8, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v9, v8}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v10

    .line 178
    new-instance v11, Landroid/support/v4/print/PrintHelperKitkat$1;

    invoke-direct {v11, p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, p1, v11, v10}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    goto :goto_0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 12

    .line 287
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 289
    new-instance v1, Landroid/support/v4/print/PrintHelperKitkat$2;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat$2;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 434
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string v4, "print"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/print/PrintManager;

    move-object v5, v6

    .line 435
    new-instance v7, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v7}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 436
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v7, v0}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 438
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 438
    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    .line 439
    sget-object v9, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v7, v9}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 443
    :cond_0
    :goto_0
    invoke-virtual {v7}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v10

    .line 445
    invoke-virtual {v5, p1, v1, v10}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 446
    return-void

    .line 440
    :cond_1
    iget v11, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 440
    const/4 v8, 0x2

    if-ne v11, v8, :cond_0

    .line 441
    sget-object v9, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v7, v9}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_0
.end method

.method public setColorMode(I)V
    .locals 0

    .line 124
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 125
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 134
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 135
    return-void
.end method

.method public setScaleMode(I)V
    .locals 0

    .line 102
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 103
    return-void
.end method
