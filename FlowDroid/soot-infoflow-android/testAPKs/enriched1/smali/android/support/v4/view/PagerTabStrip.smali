.class public Landroid/support/v4/view/PagerTabStrip;
.super Landroid/support/v4/view/PagerTitleStrip;
.source "PagerTabStrip.java"


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT:I = 0x3

.field private static final MIN_PADDING_BOTTOM:I = 0x6

.field private static final MIN_STRIP_HEIGHT:I = 0x20

.field private static final MIN_TEXT_SPACING:I = 0x40

.field private static final TAB_PADDING:I = 0x10

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 80
    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v4/view/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    const/16 v5, 0xff

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    .line 66
    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 66
    iput-boolean v5, v0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 67
    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 67
    iput-boolean v5, v0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    move-object/from16 v0, p0

    .line 82
    iget v6, v0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    move-object/from16 v0, p0

    .line 83
    iget-object v3, v0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p1

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v9, v8, Landroid/util/DisplayMetrics;->density:F

    const v11, 0x40400000    # 3.0f

    mul-float v10, v11, v9

    const v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v6, v10

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    const v11, 0x40c00000    # 6.0f

    mul-float v10, v11, v9

    const v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v6, v10

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    const v11, 0x42800000    # 64.0f

    mul-float v10, v11, v9

    float-to-int v6, v10

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    const v11, 0x41800000    # 16.0f

    mul-float v10, v11, v9

    const v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v6, v10

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    const v11, 0x3f800000    # 1.0f

    mul-float v10, v11, v9

    const v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v6, v10

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/PagerTabStrip;->mFullUnderlineHeight:I

    const v11, 0x42000000    # 32.0f

    mul-float v10, v11, v9

    const v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v6, v10

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/PagerTabStrip;->mMinStripHeight:I

    move-object/from16 v0, p1

    .line 94
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    move-object/from16 v0, p0

    .line 97
    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingBottom()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15, v6}, Landroid/support/v4/view/PagerTabStrip;->setPadding(IIII)V

    move-object/from16 v0, p0

    .line 98
    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getTextSpacing()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/view/PagerTabStrip;->setTextSpacing(I)V

    .line 98
    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 100
    invoke-virtual {v0, v5}, Landroid/support/v4/view/PagerTabStrip;->setWillNotDraw(Z)V

    move-object/from16 v0, p0

    .line 102
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    .line 102
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object/from16 v0, p0

    .line 103
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Landroid/support/v4/view/PagerTabStrip$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/PagerTabStrip$1;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    .line 110
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    .line 110
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object/from16 v0, p0

    .line 111
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v18, Landroid/support/v4/view/PagerTabStrip$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/view/PagerTabStrip$2;-><init>(Landroid/support/v4/view/PagerTabStrip;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    .line 118
    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_0

    .line 119
    const/4 v5, 0x1

    move-object/from16 v0, p0

    .line 119
    iput-boolean v5, v0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    return v0
.end method

.method getMinHeight()I
    .locals 2

    .line 215
    invoke-super {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinStripHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public getTabIndicatorColor()I
    .locals 1

    .line 147
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 257
    invoke-super {v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    .line 259
    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    .line 261
    iget-object v7, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLeft()I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int v10, v8, v9

    move-object/from16 v0, p0

    .line 262
    iget-object v7, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getRight()I

    move-result v8

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int v11, v8, v11

    move-object/from16 v0, p0

    .line 263
    iget v8, v0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    sub-int v8, v6, v8

    move-object/from16 v0, p0

    .line 265
    iget-object v12, v0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    shl-int/lit8 v13, v9, 0x18

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    const v14, 0xffffff

    and-int/2addr v9, v14

    or-int/2addr v13, v9

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    int-to-float v15, v10

    int-to-float v0, v8

    move/from16 v16, v0

    int-to-float v0, v11

    move/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    .line 268
    iget-boolean v0, v0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    .line 269
    iget-object v12, v0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    const v14, 0xffffff

    and-int v20, v8, v14

    const v14, -0x1000000

    or-int v13, v14, v20

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    .line 270
    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I

    move-result v13

    int-to-float v0, v13

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/PagerTabStrip;->mFullUnderlineHeight:I

    sub-int v13, v6, v13

    int-to-float v15, v13

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I

    move-result v20

    sub-int v13, v13, v20

    int-to-float v0, v13

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v18

    move/from16 v4, v17

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 252
    return v2

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 231
    :sswitch_0
    iput v3, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionX:F

    .line 232
    iput v4, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionY:F

    .line 233
    const/4 v2, 0x0

    .line 233
    iput-boolean v2, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_0

    .line 237
    :sswitch_1
    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    int-to-float v3, v0

    cmpl-float v6, v5, v3

    if-gtz v6, :cond_2

    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionY:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I

    int-to-float v4, v0

    cmpl-float v6, v5, v4

    if-lez v6, :cond_1

    .line 239
    :cond_2
    const/4 v2, 0x1

    .line 239
    iput-boolean v2, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z

    goto :goto_0

    .line 244
    :sswitch_2
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget v8, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int v8, v0, v8

    int-to-float v5, v8

    cmpg-float v6, v3, v5

    if-gez v6, :cond_3

    .line 245
    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v9, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getRight()I

    move-result v8

    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int/2addr v8, v0

    int-to-float v5, v8

    cmpl-float v6, v3, v5

    if-lez v6, :cond_1

    .line 247
    iget-object v10, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v10, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public setBackgroundColor(I)V
    .locals 3

    .line 176
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundColor(I)V

    .line 177
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_0

    const v2, -0x1000000

    and-int v1, v2, p1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 180
    :cond_0
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 172
    :cond_0
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundResource(I)V

    .line 185
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    .line 188
    :cond_0
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawFullUnderline(Z)V
    .locals 1

    .line 197
    iput-boolean p1, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 199
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->invalidate()V

    .line 200
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 152
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    if-ge p4, v0, :cond_0

    .line 153
    iget p4, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I

    .line 155
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/PagerTitleStrip;->setPadding(IIII)V

    .line 156
    return-void
.end method

.method public setTabIndicatorColor(I)V
    .locals 1

    .line 129
    iput p1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    .line 130
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget p1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->invalidate()V

    .line 132
    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 141
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 1

    .line 160
    iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    if-ge p1, v0, :cond_0

    .line 161
    iget p1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setTextSpacing(I)V

    .line 164
    return-void
.end method

.method updateTextPositions(IFZ)V
    .locals 8

    .line 277
    iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I

    move-result v1

    .line 279
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    iget v4, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int v5, v3, v4

    .line 280
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v4

    iget v3, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int v3, v4, v3

    .line 281
    iget v4, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I

    sub-int v4, v1, v4

    .line 283
    invoke-virtual {v0, v5, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    const v7, 0x3f000000    # 0.5f

    sub-float v6, p2, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    const v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v3, v6

    iput v3, p0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I

    .line 288
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v3, v5

    .line 289
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v5

    iget p1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I

    add-int/2addr v5, p1

    .line 290
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->union(IIII)V

    .line 292
    invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    .line 293
    return-void
.end method
