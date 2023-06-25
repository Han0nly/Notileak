.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 505
    const/16 v1, 0x700

    .line 505
    new-array v0, v1, [B

    sput-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 506
    const/4 v2, 0x0

    .line 506
    :goto_0
    const/16 v1, 0x700

    if-ge v2, v1, :cond_0

    .line 507
    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    .line 551
    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 552
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 553
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 3

    const/16 v0, 0x700

    if-ge p0, v0, :cond_0

    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v2, v1, p0

    return v2

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    return v2
.end method

.method private skipEntityBackward()B
    .locals 5

    .line 865
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 866
    :cond_0
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_2

    .line 867
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 868
    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 868
    const/16 v4, 0x26

    if-ne v3, v4, :cond_1

    .line 868
    const/16 v4, 0xc

    .line 877
    return v4

    .line 871
    :cond_1
    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 871
    const/16 v4, 0x3b

    if-ne v3, v4, :cond_0

    .line 875
    :cond_2
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 876
    const/16 v4, 0x3b

    .line 876
    iput-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 876
    const/16 v4, 0xd

    return v4
.end method

.method private skipEntityForward()B
    .locals 5

    .line 850
    :cond_0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_0

    :cond_1
    const/16 v4, 0xc

    return v4
.end method

.method private skipTagBackward()B
    .locals 6

    .line 822
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 823
    :cond_0
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_2

    .line 824
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 825
    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 825
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_1

    .line 825
    const/16 v4, 0xc

    .line 841
    return v4

    .line 829
    :cond_1
    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 829
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    .line 839
    :cond_2
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 840
    const/16 v4, 0x3e

    .line 840
    iput-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 840
    const/16 v4, 0xd

    return v4

    .line 832
    :cond_3
    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 832
    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    .line 834
    :cond_4
    iget-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 835
    :goto_0
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v5, v3, :cond_0

    goto :goto_0
.end method

.method private skipTagForward()B
    .locals 7

    .line 793
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 794
    :cond_0
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_3

    .line 795
    iget-object v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 796
    iget-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 796
    const/16 v5, 0x3e

    if-ne v4, v5, :cond_1

    .line 796
    const/16 v5, 0xc

    .line 809
    return v5

    .line 800
    :cond_1
    iget-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 800
    const/16 v5, 0x22

    if-eq v4, v5, :cond_2

    iget-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v5, 0x27

    if-ne v4, v5, :cond_0

    .line 802
    :cond_2
    iget-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 803
    :goto_0
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v6, v4, :cond_0

    goto :goto_0

    .line 807
    :cond_3
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v5, 0x3c

    iput-char v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v5, 0xd

    return v5
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 9

    .line 767
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 768
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 769
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 770
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int v5, v4, v5

    iput v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 771
    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    .line 783
    :cond_0
    return v6

    .line 773
    :cond_1
    iget v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 774
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v6

    .line 775
    iget-boolean v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v3, :cond_0

    .line 777
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 777
    const/16 v7, 0x3e

    if-ne v2, v7, :cond_2

    .line 778
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v8

    return v8

    .line 779
    :cond_2
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 779
    const/16 v7, 0x3b

    if-ne v2, v7, :cond_0

    .line 780
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v8

    return v8
.end method

.method dirTypeForward()B
    .locals 9

    .line 737
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 738
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 739
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 740
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int v5, v4, v5

    iput v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 741
    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    .line 753
    :cond_0
    return v6

    .line 743
    :cond_1
    iget v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 744
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v6

    .line 745
    iget-boolean v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v3, :cond_0

    .line 747
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 747
    const/16 v7, 0x3c

    if-ne v2, v7, :cond_2

    .line 748
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v8

    return v8

    .line 749
    :cond_2
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 749
    const/16 v7, 0x26

    if-ne v2, v7, :cond_0

    .line 750
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v8

    return v8
.end method

.method getEntryDir()I
    .locals 7

    .line 567
    const/4 v0, 0x0

    .line 567
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 568
    const/4 v1, 0x0

    .line 569
    const/4 v2, 0x0

    .line 570
    const/4 v3, 0x0

    .line 571
    :goto_0
    :sswitch_0
    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v4, v5, :cond_3

    if-nez v3, :cond_3

    .line 572
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v6

    .line 606
    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    .line 606
    :goto_1
    :sswitch_1
    move v3, v1

    .line 607
    goto :goto_0

    .line 575
    :sswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 576
    const/4 v2, -0x1

    .line 577
    goto :goto_0

    .line 580
    :sswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 581
    const/4 v2, 0x1

    .line 582
    goto :goto_0

    .line 584
    :sswitch_4
    add-int/lit8 v1, v1, -0x1

    .line 588
    const/4 v2, 0x0

    .line 589
    goto :goto_0

    :sswitch_5
    if-nez v1, :cond_1

    const/4 v2, -0x1

    .line 649
    :cond_0
    return v2

    .line 596
    :cond_1
    move v3, v1

    .line 597
    goto :goto_0

    :sswitch_6
    if-nez v1, :cond_2

    .line 596
    const/4 v0, 0x1

    return v0

    .line 603
    :cond_2
    move v3, v1

    .line 604
    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 603
    const/4 v0, 0x0

    return v0

    :cond_4
    if-nez v2, :cond_0

    .line 627
    :goto_2
    iget v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v5, :cond_7

    .line 628
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_3

    :goto_3
    goto :goto_2

    :sswitch_7
    if-ne v3, v1, :cond_5

    const/4 v0, -0x1

    return v0

    .line 634
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 635
    goto :goto_2

    :sswitch_8
    if-ne v3, v1, :cond_6

    .line 634
    const/4 v0, 0x1

    return v0

    .line 641
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 642
    goto :goto_2

    .line 644
    :sswitch_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 644
    :cond_7
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_7
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_8
        0x12 -> :sswitch_9
    .end sparse-switch
.end method

.method getExitDir()I
    .locals 5

    .line 665
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 666
    const/4 v1, 0x0

    .line 667
    const/4 v0, 0x0

    .line 668
    :cond_0
    :goto_0
    :sswitch_0
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_5

    .line 669
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :goto_1
    :sswitch_1
    if-nez v0, :cond_0

    .line 708
    move v0, v1

    goto :goto_0

    :sswitch_2
    if-nez v1, :cond_2

    .line 708
    :cond_1
    const/4 v4, -0x1

    .line 713
    return v4

    :cond_2
    if-nez v0, :cond_0

    .line 675
    move v0, v1

    goto :goto_0

    :sswitch_3
    if-eq v0, v1, :cond_1

    .line 683
    add-int/lit8 v1, v1, -0x1

    .line 684
    goto :goto_0

    :sswitch_4
    if-nez v1, :cond_3

    .line 683
    const/4 v4, 0x1

    return v4

    :cond_3
    if-nez v0, :cond_0

    .line 691
    move v0, v1

    goto :goto_0

    :sswitch_5
    if-ne v0, v1, :cond_4

    .line 691
    const/4 v4, 0x1

    return v4

    .line 699
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 700
    goto :goto_0

    .line 702
    :sswitch_6
    add-int/lit8 v1, v1, 0x1

    .line 703
    goto :goto_0

    .line 702
    :cond_5
    const/4 v4, 0x0

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_3
        0xf -> :sswitch_3
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
    .end sparse-switch
.end method
