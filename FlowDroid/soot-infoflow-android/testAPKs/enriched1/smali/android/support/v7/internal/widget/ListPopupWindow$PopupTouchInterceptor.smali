.class Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
    .locals 0

    .line 1389
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
    .locals 0

    .line 1389
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1392
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1393
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v2, v1

    .line 1394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v3, v1

    if-nez v0, :cond_1

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$800(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$800(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    if-ltz v2, :cond_1

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$800(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    if-ge v2, v7, :cond_1

    if-ltz v3, :cond_1

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$800(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 1399
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$1000(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v8

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$900(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v9

    const-wide/16 v10, 0xfa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    const/4 v12, 0x0

    return v12

    :cond_1
    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    .line 1401
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$1000(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v8

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$900(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
