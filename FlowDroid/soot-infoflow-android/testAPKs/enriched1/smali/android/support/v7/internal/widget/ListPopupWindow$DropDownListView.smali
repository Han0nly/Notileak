.class Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow.DropDownListView"


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    sget v0, Landroid/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1171
    iput-boolean p2, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 1171
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1173
    return-void
.end method

.method static synthetic access$502(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;Z)Z
    .locals 0

    .line 1119
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;IZ)I
    .locals 0

    .line 1119
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result p1

    return p1
.end method

.method private lookForSelectablePosition(IZ)I
    .locals 6

    .line 1184
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 1211
    return v2

    .line 1189
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 1190
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ge p1, v3, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1194
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1197
    :cond_2
    add-int/lit8 v5, v3, -0x1

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1199
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v3, :cond_0

    return p1

    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v3, :cond_0

    return p1
.end method


# virtual methods
.method public hasFocus()Z
    .locals 2

    .line 1248
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hasWindowFocus()Z
    .locals 2

    .line 1228
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isFocused()Z
    .locals 2

    .line 1238
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isInTouchMode()Z
    .locals 2

    .line 1218
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method final measureHeightOfChildrenCompat(IIIII)I
    .locals 13

    .line 1281
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getListPaddingTop()I

    move-result v1

    .line 1282
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getListPaddingBottom()I

    move-result v2

    .line 1283
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getListPaddingLeft()I

    .line 1284
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getListPaddingRight()I

    .line 1285
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v3

    .line 1286
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1288
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1291
    add-int v3, v1, v2

    .line 1350
    :cond_0
    return v3

    .line 1295
    :cond_1
    add-int v6, v1, v2

    if-lez v3, :cond_5

    if-eqz v4, :cond_5

    move v7, v3

    .line 1301
    :goto_0
    const/4 v3, 0x0

    .line 1303
    const/4 v8, 0x0

    .line 1304
    const/4 v9, 0x0

    .line 1305
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    .line 1306
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_9

    .line 1307
    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    if-eq v2, v9, :cond_2

    .line 1309
    const/4 v8, 0x0

    .line 1310
    move v9, v2

    :cond_2
    invoke-interface {v5, v1, v8, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1316
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-eqz v10, :cond_6

    iget v2, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_6

    .line 1318
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 p3, v0

    const v11, 0x40000000    # 2.0f

    move/from16 v0, p3

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    :goto_2
    move/from16 v0, p3

    invoke-virtual {v8, p1, v0}, Landroid/view/View;->measure(II)V

    if-lez v1, :cond_3

    .line 1327
    add-int/2addr v6, v7

    .line 1330
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v6, v2

    move/from16 v0, p4

    if-lt v6, v0, :cond_7

    if-ltz p5, :cond_4

    move/from16 v0, p5

    if-le v1, v0, :cond_4

    if-lez v3, :cond_4

    move/from16 v0, p4

    if-ne v6, v0, :cond_0

    :cond_4
    return p4

    .line 1296
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    goto :goto_2

    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v1, v0, :cond_8

    .line 1344
    move v3, v6

    .line 1306
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return v6
.end method
