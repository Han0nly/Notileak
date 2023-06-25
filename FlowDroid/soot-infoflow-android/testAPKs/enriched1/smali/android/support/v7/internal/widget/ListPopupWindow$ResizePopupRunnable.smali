.class Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
    .locals 0

    .line 1378
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
    .locals 0

    .line 1378
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1381
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$700(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$700(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getCount()I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$700(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$700(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget v2, v0, Landroid/support/v7/internal/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v3, v2, :cond_0

    .line 1383
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$800(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1384
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    .line 1386
    :cond_0
    return-void
.end method
