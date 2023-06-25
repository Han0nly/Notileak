.class final Landroid/support/v4/widget/BakedBezierInterpolator;
.super Ljava/lang/Object;
.source "BakedBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final INSTANCE:Landroid/support/v4/widget/BakedBezierInterpolator;

.field private static final STEP_SIZE:F

.field private static final VALUES:[F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Landroid/support/v4/widget/BakedBezierInterpolator;

    invoke-direct {v0}, Landroid/support/v4/widget/BakedBezierInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/BakedBezierInterpolator;->INSTANCE:Landroid/support/v4/widget/BakedBezierInterpolator;

    const/16 v2, 0x65

    new-array v1, v2, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x3951b717    # 2.0E-4f

    aput v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x3a6bedfa    # 9.0E-4f

    aput v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x3af9096c    # 0.0019f

    aput v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x3b6bedfa    # 0.0036f

    aput v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x3bc154ca    # 0.0059f

    aput v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x3c0ce704    # 0.0086f

    aput v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x3c42f838    # 0.0119f

    aput v3, v1, v2

    const/16 v2, 0x8

    const v3, 0x3c809d49    # 0.0157f

    aput v3, v1, v2

    const/16 v2, 0x9

    const v3, 0x3cab367a    # 0.0209f

    aput v3, v1, v2

    const/16 v2, 0xa

    const v3, 0x3cd288ce    # 0.0257f

    aput v3, v1, v2

    const/16 v2, 0xb

    const v3, 0x3d037b4a

    aput v3, v1, v2

    const/16 v2, 0xc

    const v3, 0x3d20902e    # 0.0392f

    aput v3, v1, v2

    const/16 v2, 0xd

    const v3, 0x3d401a37    # 0.0469f

    aput v3, v1, v2

    const/16 v2, 0xe

    const v3, 0x3d67d567    # 0.0566f

    aput v3, v1, v2

    const/16 v2, 0xf

    const v3, 0x3d86594b    # 0.0656f

    aput v3, v1, v2

    const/16 v2, 0x10

    const v3, 0x3d9d4952    # 0.0768f

    aput v3, v1, v2

    const/16 v2, 0x11

    const v3, 0x3db5a858    # 0.0887f

    aput v3, v1, v2

    const/16 v2, 0x12

    const v3, 0x3dd38ef3    # 0.1033f

    aput v3, v1, v2

    const/16 v2, 0x13

    const v3, 0x3df2e48f    # 0.1186f

    aput v3, v1, v2

    const/16 v2, 0x14

    const v3, 0x3e0a233a    # 0.1349f

    aput v3, v1, v2

    const/16 v2, 0x15

    const v3, 0x3e1b8bac    # 0.1519f

    aput v3, v1, v2

    const/16 v2, 0x16

    const v3, 0x3e2dab9f    # 0.1696f

    aput v3, v1, v2

    const/16 v2, 0x17

    const v3, 0x3e456d5d    # 0.1928f

    aput v3, v1, v2

    const/16 v2, 0x18

    const v3, 0x3e5930be    # 0.2121f

    aput v3, v1, v2

    const/16 v2, 0x19

    const v3, 0x3e72b021    # 0.237f

    aput v3, v1, v2

    const/16 v2, 0x1a

    const v3, 0x3e86809d    # 0.2627f

    aput v3, v1, v2

    const/16 v2, 0x1b

    const v3, 0x3e941206    # 0.2892f

    aput v3, v1, v2

    const/16 v2, 0x1c

    const v3, 0x3e9f2e49    # 0.3109f

    aput v3, v1, v2

    const/16 v2, 0x1d

    const v3, 0x3ead5cfb    # 0.3386f

    aput v3, v1, v2

    const/16 v2, 0x1e

    const v3, 0x3ebbc01a    # 0.3667f

    aput v3, v1, v2

    const/16 v2, 0x1f

    const v3, 0x3eca57a8    # 0.3952f

    aput v3, v1, v2

    const/16 v2, 0x20

    const v3, 0x3ed923a3    # 0.4241f

    aput v3, v1, v2

    const/16 v2, 0x21

    const v3, 0x3ee5119d    # 0.4474f

    aput v3, v1, v2

    const/16 v2, 0x22

    const v3, 0x3ef404ea    # 0.4766f

    aput v3, v1, v2

    const/16 v2, 0x23

    const v3, 0x3f000000    # 0.5f

    aput v3, v1, v2

    const/16 v2, 0x24

    const v3, 0x3f05fd8b    # 0.5234f

    aput v3, v1, v2

    const/16 v2, 0x25

    const v3, 0x3f0bfb16    # 0.5468f

    aput v3, v1, v2

    const/16 v2, 0x26

    const v3, 0x3f11f213    # 0.5701f

    aput v3, v1, v2

    const/16 v2, 0x27

    const v3, 0x3f17e282    # 0.5933f

    aput v3, v1, v2

    const/16 v2, 0x28

    const v3, 0x3f1d07c8    # 0.6134f

    aput v3, v1, v2

    const/16 v2, 0x29

    const v3, 0x3f221ff3    # 0.6333f

    aput v3, v1, v2

    const/16 v2, 0x2a

    const v3, 0x3f273190    # 0.6531f

    aput v3, v1, v2

    const/16 v2, 0x2b

    const v3, 0x3f2b7803    # 0.6698f

    aput v3, v1, v2

    const/16 v2, 0x2c

    const v3, 0x3f3068dc    # 0.6891f

    aput v3, v1, v2

    const/16 v2, 0x2d

    const v3, 0x3f349518    # 0.7054f

    aput v3, v1, v2

    const/16 v2, 0x2e

    const v3, 0x3f38adac    # 0.7214f

    aput v3, v1, v2

    const/16 v2, 0x2f

    const v3, 0x3f3c0ebf    # 0.7346f

    aput v3, v1, v2

    const/16 v2, 0x30

    const v3, 0x3f400d1b    # 0.7502f

    aput v3, v1, v2

    const/16 v2, 0x31

    const v3, 0x3f4353f8    # 0.763f

    aput v3, v1, v2

    const/16 v2, 0x32

    const v3, 0x3f468db9    # 0.7756f

    aput v3, v1, v2

    const/16 v2, 0x33

    const v3, 0x3f49b3d0    # 0.7879f

    aput v3, v1, v2

    const/16 v2, 0x34

    const v3, 0x3f4ccccd    # 0.8f

    aput v3, v1, v2

    const/16 v2, 0x35

    const v3, 0x3f4f8a09    # 0.8107f

    aput v3, v1, v2

    const/16 v2, 0x36

    const v3, 0x3f523a2a    # 0.8212f

    aput v3, v1, v2

    const/16 v2, 0x37

    const v3, 0x3f552546    # 0.8326f

    aput v3, v1, v2

    const/16 v2, 0x38

    const v3, 0x3f576c8b    # 0.8415f

    aput v3, v1, v2

    const/16 v2, 0x39

    const v3, 0x3f59ad43    # 0.8503f

    aput v3, v1, v2

    const/16 v2, 0x3a

    const v3, 0x3f5bda51    # 0.8588f

    aput v3, v1, v2

    const/16 v2, 0x3b

    const v3, 0x3f5e00d2    # 0.8672f

    aput v3, v1, v2

    const/16 v2, 0x3c

    const v3, 0x3f601a37    # 0.8754f

    aput v3, v1, v2

    const/16 v2, 0x3d

    const v3, 0x3f621ff3    # 0.8833f

    aput v3, v1, v2

    const/16 v2, 0x3e

    const v3, 0x3f641f21    # 0.8911f

    aput v3, v1, v2

    const/16 v2, 0x3f

    const v3, 0x3f65cfab    # 0.8977f

    aput v3, v1, v2

    const/16 v2, 0x40

    const v3, 0x3f677319    # 0.9041f

    aput v3, v1, v2

    const/16 v2, 0x41

    const v3, 0x3f694af5    # 0.9113f

    aput v3, v1, v2

    const/16 v2, 0x42

    const v3, 0x3f6a9fbe    # 0.9165f

    aput v3, v1, v2

    const/16 v2, 0x43

    const v3, 0x3f6c56d6    # 0.9232f

    aput v3, v1, v2

    const/16 v2, 0x44

    const v3, 0x3f6d97f6    # 0.9281f

    aput v3, v1, v2

    const/16 v2, 0x45

    const v3, 0x3f6ecbfb    # 0.9328f

    aput v3, v1, v2

    const/16 v2, 0x46

    const v3, 0x3f702de0    # 0.9382f

    aput v3, v1, v2

    const/16 v2, 0x47

    const v3, 0x3f7182aa    # 0.9434f

    aput v3, v1, v2

    const/16 v2, 0x48

    const v3, 0x3f7295ea    # 0.9476f

    aput v3, v1, v2

    const/16 v2, 0x49

    const v3, 0x3f73a92a    # 0.9518f

    aput v3, v1, v2

    const/16 v2, 0x4a

    const v3, 0x3f74a8c1    # 0.9557f

    aput v3, v1, v2

    const/16 v2, 0x4b

    const v3, 0x3f75a858    # 0.9596f

    aput v3, v1, v2

    const/16 v2, 0x4c

    const v3, 0x3f769446    # 0.9632f

    aput v3, v1, v2

    const/16 v2, 0x4d

    const v3, 0x3f7758e2    # 0.9662f

    aput v3, v1, v2

    const/16 v2, 0x4e

    const v3, 0x3f783127    # 0.9695f

    aput v3, v1, v2

    const/16 v2, 0x4f

    const v3, 0x3f78e219    # 0.9722f

    aput v3, v1, v2

    const/16 v2, 0x50

    const v3, 0x3f79ad43    # 0.9753f

    aput v3, v1, v2

    const/16 v2, 0x51

    const v3, 0x3f7a4a8c    # 0.9777f

    aput v3, v1, v2

    const/16 v2, 0x52

    const v3, 0x3f7b020c    # 0.9805f

    aput v3, v1, v2

    const/16 v2, 0x53

    const v3, 0x3f7b8bac    # 0.9826f

    aput v3, v1, v2

    const/16 v2, 0x54

    const v3, 0x3f7c154d    # 0.9847f

    aput v3, v1, v2

    const/16 v2, 0x55

    const v3, 0x3f7c91d1    # 0.9866f

    aput v3, v1, v2

    const/16 v2, 0x56

    const v3, 0x3f7d07c8    # 0.9884f

    aput v3, v1, v2

    const/16 v2, 0x57

    const v3, 0x3f7d7732    # 0.9901f

    aput v3, v1, v2

    const/16 v2, 0x58

    const v3, 0x3f7de00d    # 0.9917f

    aput v3, v1, v2

    const/16 v2, 0x59

    const v3, 0x3f7e3bcd    # 0.9931f

    aput v3, v1, v2

    const/16 v2, 0x5a

    const v3, 0x3f7e9100    # 0.9944f

    aput v3, v1, v2

    const/16 v2, 0x5b

    const v3, 0x3f7ed917    # 0.9955f

    aput v3, v1, v2

    const/16 v2, 0x5c

    const v3, 0x3f7f1412    # 0.9964f

    aput v3, v1, v2

    const/16 v2, 0x5d

    const v3, 0x3f7f4f0e    # 0.9973f

    aput v3, v1, v2

    const/16 v2, 0x5e

    const v3, 0x3f7f837b    # 0.9981f

    aput v3, v1, v2

    const/16 v2, 0x5f

    const v3, 0x3f7fa440    # 0.9986f

    aput v3, v1, v2

    const/16 v2, 0x60

    const v3, 0x3f7fcb92    # 0.9992f

    aput v3, v1, v2

    const/16 v2, 0x61

    const v3, 0x3f7fdf3b    # 0.9995f

    aput v3, v1, v2

    const/16 v2, 0x62

    const v3, 0x3f7ff2e5    # 0.9998f

    aput v3, v1, v2

    const/16 v2, 0x63

    const v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/16 v2, 0x64

    const v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    sput-object v1, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    sget-object v1, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    int-to-float v5, v4

    const v3, 0x3f800000    # 1.0f

    div-float v5, v3, v5

    sput v5, Landroid/support/v4/widget/BakedBezierInterpolator;->STEP_SIZE:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static final getInstance()Landroid/support/v4/widget/BakedBezierInterpolator;
    .locals 1

    .line 28
    sget-object v0, Landroid/support/v4/widget/BakedBezierInterpolator;->INSTANCE:Landroid/support/v4/widget/BakedBezierInterpolator;

    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8

    .line 65
    const v1, 0x3f800000    # 1.0f

    .line 65
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    .line 65
    const v1, 0x3f800000    # 1.0f

    .line 81
    return v1

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 69
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_1

    .line 69
    const/4 v1, 0x0

    return v1

    .line 73
    :cond_1
    sget-object v2, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    int-to-float v4, v3

    mul-float/2addr v4, p1

    float-to-int v3, v4

    sget-object v2, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 77
    int-to-float v4, v3

    sget v6, Landroid/support/v4/widget/BakedBezierInterpolator;->STEP_SIZE:F

    mul-float v6, v4, v6

    .line 78
    sub-float/2addr p1, v6

    .line 79
    sget v4, Landroid/support/v4/widget/BakedBezierInterpolator;->STEP_SIZE:F

    div-float v6, p1, v4

    .line 81
    sget-object v2, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    aget v4, v2, v3

    sget-object v2, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    add-int/lit8 v5, v3, 0x1

    aget p1, v2, v5

    sget-object v2, Landroid/support/v4/widget/BakedBezierInterpolator;->VALUES:[F

    aget v7, v2, v3

    sub-float v7, p1, v7

    mul-float/2addr v7, v6

    add-float v6, v4, v7

    return v6
.end method
