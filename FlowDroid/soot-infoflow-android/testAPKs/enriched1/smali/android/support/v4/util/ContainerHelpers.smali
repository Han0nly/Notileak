.class Landroid/support/v4/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    const/4 v1, 0x0

    .line 20
    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    .line 21
    const/4 v1, 0x0

    .line 21
    new-array v2, v1, [J

    sput-object v2, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    .line 22
    const/4 v1, 0x0

    .line 22
    new-array v3, v1, [Ljava/lang/Object;

    sput-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binarySearch([III)I
    .locals 3

    .line 46
    const/4 v0, 0x0

    .line 47
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-gt v0, p1, :cond_1

    .line 50
    add-int v1, v0, p1

    ushr-int/lit8 v2, v1, 0x1

    .line 51
    aget v1, p0, v2

    if-ge v1, p2, :cond_0

    .line 54
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v1, p2, :cond_2

    .line 56
    add-int/lit8 p1, v2, -0x1

    goto :goto_0

    .line 61
    :cond_1
    not-int v2, v0

    :cond_2
    return v2
.end method

.method static binarySearch([JIJ)I
    .locals 5

    .line 65
    const/4 v0, 0x0

    .line 66
    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-gt v0, p1, :cond_1

    .line 69
    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 70
    aget-wide v2, p0, v1

    .line 72
    cmp-long v4, v2, p2

    if-gez v4, :cond_0

    .line 73
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    cmp-long v4, v2, p2

    if-lez v4, :cond_2

    .line 75
    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    .line 80
    :cond_1
    not-int v1, v0

    :cond_2
    return v1
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static idealByteArraySize(I)I
    .locals 3

    .line 33
    const/4 v0, 0x4

    .line 33
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 34
    const/4 v1, 0x1

    .line 34
    shl-int v2, v1, v0

    add-int/lit8 v2, v2, -0xc

    if-gt p0, v2, :cond_1

    .line 35
    const/4 v1, 0x1

    .line 35
    shl-int v2, v1, v0

    add-int/lit8 p0, v2, -0xc

    .line 37
    :cond_0
    return p0

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealIntArraySize(I)I
    .locals 0

    .line 25
    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static idealLongArraySize(I)I
    .locals 0

    .line 29
    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method
