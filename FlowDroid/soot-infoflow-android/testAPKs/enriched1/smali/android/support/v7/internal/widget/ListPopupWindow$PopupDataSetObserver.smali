.class Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
    .locals 0

    .line 1355
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
    .locals 0

    .line 1355
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1359
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1361
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    .line 1363
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1367
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->dismiss()V

    .line 1368
    return-void
.end method
