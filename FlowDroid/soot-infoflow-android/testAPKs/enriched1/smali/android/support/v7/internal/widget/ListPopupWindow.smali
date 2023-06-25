.class public Landroid/support/v7/internal/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;,
        Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final FILL_PARENT:I = -0x1

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 178
    sget v0, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 189
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v3, -0x2

    move-object/from16 v0, p0

    .line 71
    iput v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I

    .line 72
    const/4 v3, -0x2

    move-object/from16 v0, p0

    .line 72
    iput v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    .line 77
    const/4 v3, 0x0

    move-object/from16 v0, p0

    .line 77
    iput-boolean v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 78
    const/4 v3, 0x0

    move-object/from16 v0, p0

    .line 78
    iput-boolean v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    const v3, 0x7fffffff

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mListItemExpandMaximum:I

    const/4 v3, 0x0

    move v4, v3

    move-object/from16 v0, p0

    .line 82
    iput v4, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptPosition:I

    .line 93
    new-instance v5, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;

    .line 93
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;

    .line 94
    new-instance v7, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 94
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6}, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 95
    new-instance v8, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;

    .line 95
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6}, Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;

    .line 96
    new-instance v9, Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;

    .line 96
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v6}, Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;

    .line 99
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 190
    iput-object v0, v1, Landroid/support/v7/internal/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 191
    new-instance v12, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v12, v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    .line 192
    iget-object v12, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 192
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    move-object/from16 v0, p0

    .line 194
    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v15, v14, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 196
    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method private buildDropDown()I
    .locals 41

    .line 911
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    if-nez v7, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 922
    new-instance v9, Landroid/support/v7/internal/widget/ListPopupWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/support/v7/internal/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 932
    new-instance v7, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mModal:Z

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_0
    invoke-direct {v7, v8, v10}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v11}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v7, v12}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v13}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    new-instance v15, Landroid/support/v7/internal/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/support/v7/internal/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    invoke-virtual {v7, v15}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/internal/widget/ListPopupWindow$PopupScrollListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 968
    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 968
    const/4 v14, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 971
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 971
    const/4 v14, -0x1

    const/16 v22, 0x0

    .line 971
    const v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v14, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptPosition:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    goto :goto_1

    :goto_1
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Invalid hint position "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptPosition:I

    move/from16 v24, v0

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v26, "ListPopupWindow"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v24, v0

    .line 995
    const v14, -0x80000000

    move/from16 v0, v24

    .line 995
    invoke-static {v0, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 995
    const/4 v14, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, v19

    .line 997
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    move-object/from16 v29, v28

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v21, v29

    move-object/from16 v0, v19

    .line 998
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    move-object/from16 v0, v21

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v24, v24, v6

    move-object/from16 v0, v21

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, v24, v6

    move-object/from16 v18, v20

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :cond_3
    :goto_3
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    add-int v24, v24, v32

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v32

    const/4 v14, 0x2

    move/from16 v0, v32

    if-ne v0, v14, :cond_9

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v0, p0

    .line 1036
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v10}, Landroid/support/v7/internal/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v32

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I

    move/from16 v33, v0

    const/4 v14, -0x1

    move/from16 v0, v33

    if-ne v0, v14, :cond_a

    .line 1040
    :cond_5
    add-int v24, v32, v24

    .line 1070
    return v24

    .line 932
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    .line 977
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    .line 978
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :sswitch_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    .line 982
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    .line 983
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v34, v19

    check-cast v34, Landroid/view/ViewGroup;

    move-object/from16 v18, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    .line 1009
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    move-object/from16 v35, v28

    check-cast v35, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v21, v35

    move-object/from16 v0, v19

    .line 1011
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    move-object/from16 v0, v21

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v24, v24, v6

    move-object/from16 v0, v21

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, v24, v6

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_4

    .line 1034
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v33, v0

    sparse-switch v33, :sswitch_data_1

    goto :goto_6

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v33, v0

    const v14, 0x40000000    # 2.0f

    move/from16 v0, v33

    invoke-static {v0, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    sub-int v32, v32, v6

    const/4 v14, 0x0

    const/16 v22, -0x1

    const/16 v36, -0x1

    move-object v0, v7

    move/from16 v1, v33

    move v2, v14

    move/from16 v3, v22

    move/from16 v4, v32

    move/from16 v5, v36

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v32

    if-lez v32, :cond_b

    add-int v6, v6, v24

    .line 1070
    :cond_b
    add-int v24, v32, v6

    return v24

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v40, v0

    add-int v40, v33, v40

    sub-int v40, v39, v40

    const v14, -0x80000000

    move/from16 v0, v40

    invoke-static {v0, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1050
    goto :goto_7

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    add-int v39, v39, v33

    sub-int v40, v40, v39

    const v14, 0x40000000    # 2.0f

    move/from16 v0, v40

    invoke-static {v0, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    goto/16 :goto_7

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_3
    .end sparse-switch
.end method

.method private removePromptView()V
    .locals 5

    .line 617
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 620
    move-object v4, v1

    .line 620
    check-cast v4, Landroid/view/ViewGroup;

    .line 620
    move-object v3, v4

    .line 621
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 624
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .line 670
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_0

    .line 670
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 675
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 677
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 600
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 601
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->removePromptView()V

    .line 602
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 602
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 603
    const/4 v1, 0x0

    .line 603
    iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    .line 604
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 605
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 367
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 2

    .line 358
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v1

    return v1
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 331
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .line 453
    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 384
    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 2

    .line 647
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 765
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 11

    .line 1089
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1090
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1093
    const/4 v2, 0x2

    .line 1093
    new-array v1, v2, [I

    .line 1094
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1096
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    .line 1098
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1099
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1101
    :cond_0
    const/4 v2, 0x1

    .line 1101
    aget v7, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v3, v7

    sub-int v3, v7, p2

    .line 1102
    const/4 v2, 0x1

    .line 1102
    aget v7, v1, v2

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int p2, v7, p2

    .line 1105
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1106
    iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 1107
    iget-object v9, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1108
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    .line 1111
    :cond_1
    return v3
.end method

.method public getPromptPosition()I
    .locals 1

    .line 238
    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 4

    .line 718
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    const/4 v1, 0x0

    .line 721
    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getSelectedItemId()J
    .locals 6

    .line 742
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    const-wide v1, -0x8000000000000000L

    .line 745
    return-wide v1

    :cond_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v4

    return-wide v4
.end method

.method public getSelectedItemPosition()I
    .locals 4

    .line 730
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    const/4 v1, -0x1

    .line 733
    return v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v3

    return v3
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 4

    .line 754
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    const/4 v1, 0x0

    .line 757
    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public getSoftInputMode()I
    .locals 2

    .line 315
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v1

    return v1
.end method

.method public getVerticalOffset()I
    .locals 3

    .line 400
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 400
    const/4 v1, 0x0

    .line 403
    return v1

    :cond_0
    iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v2
.end method

.method public getWidth()I
    .locals 1

    .line 420
    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 3

    .line 691
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isModal()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 683
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    .line 789
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 789
    const/16 v1, 0x3e

    if-eq p1, v1, :cond_8

    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v3

    if-gez v3, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_8

    const/16 v1, 0x17

    if-eq p1, v1, :cond_8

    .line 799
    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 802
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 804
    :goto_0
    iget-object v6, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 807
    const v7, 0x7fffffff

    .line 808
    const v3, -0x80000000

    if-eqz v6, :cond_1

    .line 811
    invoke-interface {v6}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    if-eqz v8, :cond_6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    if-le v4, v7, :cond_3

    :cond_2
    if-nez v0, :cond_7

    const/16 v1, 0x14

    if-ne p1, v1, :cond_7

    if-lt v4, v3, :cond_7

    .line 822
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->clearListSelection()V

    .line 823
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    move v9, v1

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 824
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    :sswitch_0
    const/4 v1, 0x1

    .line 872
    return v1

    :cond_4
    const/4 v0, 0x0

    .line 802
    goto :goto_0

    .line 812
    :cond_5
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    const/4 v1, 0x0

    move v3, v1

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->access$600(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v7

    goto :goto_1

    .line 814
    :cond_6
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->access$600(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v3

    goto :goto_2

    .line 829
    :cond_7
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    .line 829
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 832
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 840
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 840
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 845
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 846
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    sparse-switch p1, :sswitch_data_0

    goto :goto_3

    :cond_8
    :goto_3
    const/4 v1, 0x0

    return v1

    :cond_9
    if-eqz v0, :cond_a

    const/16 v1, 0x14

    if-ne p1, v1, :cond_a

    if-ne v4, v3, :cond_8

    const/4 v1, 0x1

    return v1

    :cond_a
    if-nez v0, :cond_8

    const/16 v1, 0x13

    if-ne p1, v1, :cond_8

    if-ne v4, v7, :cond_8

    const/4 v1, 0x1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 885
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v2

    if-ltz v2, :cond_1

    .line 886
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 900
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 900
    :cond_0
    :goto_0
    return v3

    .line 894
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->dismiss()V

    return v3

    :cond_1
    const/4 v4, 0x0

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(I)Z
    .locals 15

    .line 702
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 703
    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v7, :cond_0

    .line 704
    iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    .line 705
    invoke-virtual {v8}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, p1, v9

    invoke-virtual {v8, v9}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 706
    invoke-virtual {v8}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    .line 707
    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    move-object v0, v7

    move-object v1, v8

    move-object v2, v10

    move/from16 v3, p1

    move-wide v4, v12

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 v14, 0x1

    .line 711
    return v14

    :cond_1
    const/4 v14, 0x0

    return v14
.end method

.method public postShow()V
    .locals 2

    .line 506
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    .line 205
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 206
    new-instance v1, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;

    .line 206
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 210
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 211
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 212
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 215
    :cond_1
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    if-eqz v4, :cond_2

    .line 216
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v3}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    :cond_2
    return-void

    .line 207
    :cond_3
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 377
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 378
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1

    .line 349
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 350
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 340
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    return-void
.end method

.method public setContentWidth(I)V
    .locals 5

    .line 440
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 443
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int v4, v3, v4

    add-int/2addr v4, p1

    iput v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    .line 285
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 286
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 272
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 462
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I

    .line 463
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 393
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 394
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    .line 638
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 639
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0

    .line 775
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 776
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 324
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 325
    return-void
.end method

.method public setModal(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mModal:Z

    .line 251
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 252
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 613
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 614
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 472
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 473
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 482
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 483
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    .line 229
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptPosition:I

    .line 230
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    .line 492
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->removePromptView()V

    .line 496
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 498
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    .line 500
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 4

    .line 656
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    .line 657
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 657
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 659
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 660
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 664
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 306
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    .line 412
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 414
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 430
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    .line 431
    return-void
.end method

.method public show()V
    .locals 23

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object/from16 v0, p0

    .line 514
    invoke-direct {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->buildDropDown()I

    move-result v9

    .line 516
    const/4 v10, 0x0

    .line 517
    const/4 v11, 0x0

    move-object/from16 v0, p0

    .line 519
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v12

    move-object/from16 v0, p0

    .line 521
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    .line 522
    iget v15, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 525
    const/4 v15, -0x1

    :goto_0
    move-object/from16 v0, p0

    .line 532
    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I

    move/from16 v17, v0

    const/16 v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    if-eqz v12, :cond_4

    move/from16 v17, v9

    :goto_1
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    .line 537
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_5

    :goto_2
    const/16 v16, 0x0

    move/from16 v9, v16

    invoke-virtual {v13, v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    :goto_3
    move-object/from16 v0, p0

    .line 552
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v14, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-virtual {v13, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    move-object/from16 v0, p0

    .line 554
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move-object v0, v13

    move-object/from16 v1, v18

    move v2, v9

    move v3, v8

    move v4, v15

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 594
    :cond_1
    :goto_4
    return-void

    :cond_2
    move-object/from16 v0, p0

    .line 526
    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v17, v0

    const/16 v16, -0x2

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    .line 527
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v15

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    .line 529
    iget v15, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_4
    const/16 v17, -0x1

    .line 535
    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    move/from16 v8, v16

    .line 537
    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    .line 541
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_7

    const/4 v9, -0x1

    :goto_5
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v13, v9, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    move/from16 v9, v16

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    .line 546
    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I

    move/from16 v17, v0

    const/16 v16, -0x2

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    move/from16 v17, v9

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    .line 549
    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I

    move/from16 v17, v0

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    .line 557
    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v17, v0

    const/16 v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 558
    const/4 v10, -0x1

    :goto_6
    move-object/from16 v0, p0

    .line 567
    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I

    move/from16 v17, v0

    const/16 v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    .line 568
    const/4 v11, -0x1

    :goto_7
    move-object/from16 v0, p0

    .line 577
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v10, v11}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    move-object/from16 v0, p0

    .line 581
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v14, :cond_11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v14, :cond_11

    :goto_8
    invoke-virtual {v13, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    move-object/from16 v0, p0

    .line 582
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    .line 583
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1, v15}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    move-object/from16 v0, p0

    .line 585
    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v20, v0

    const/16 v16, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    move-object/from16 v0, p0

    .line 587
    iget-boolean v14, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mModal:Z

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v14

    if-eqz v14, :cond_c

    :cond_b
    move-object/from16 v0, p0

    .line 588
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->clearListSelection()V

    :cond_c
    move-object/from16 v0, p0

    .line 590
    iget-boolean v14, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mModal:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    .line 591
    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/internal/widget/ListPopupWindow$ListSelectorHider;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    .line 560
    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v17, v0

    const/16 v16, -0x2

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    .line 561
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    .line 563
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    .line 570
    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I

    move/from16 v17, v0

    const/16 v16, -0x2

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    .line 571
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, p0

    .line 573
    iget-object v13, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/16 :goto_7

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_8
.end method
