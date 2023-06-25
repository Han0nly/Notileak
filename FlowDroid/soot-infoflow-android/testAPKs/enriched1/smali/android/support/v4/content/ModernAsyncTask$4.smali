.class synthetic Landroid/support/v4/content/ModernAsyncTask$4;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/ModernAsyncTask$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = "null"
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 407
    invoke-static {}, Landroid/support/v4/content/ModernAsyncTask$Status;->values()[Landroid/support/v4/content/ModernAsyncTask$Status;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [I

    sput-object v2, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I

    :try_start_0
    sget-object v2, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I

    sget-object v3, Landroid/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v3}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    aput v4, v2, v1

    :goto_0
    :try_start_1
    sget-object v2, Landroid/support/v4/content/ModernAsyncTask$4;->$SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I

    sget-object v3, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v3}, Landroid/support/v4/content/ModernAsyncTask$Status;->ordinal()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x2

    aput v4, v2, v1

    :goto_1
    return-void

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_0
.end method
