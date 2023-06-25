.class Landroid/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplJellybean"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 37

    .line 132
    new-instance v7, Landroid/support/v4/app/NotificationCompatJellybean;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-direct/range {v7 .. v23}, Landroid/support/v4/app/NotificationCompatJellybean;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    move-object/from16 v0, v25

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, v25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v28, v26

    check-cast v28, Landroid/support/v4/app/NotificationCompat$Action;

    move-object/from16 v27, v28

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    move/from16 v22, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v7, v0, v1, v2}, Landroid/support/v4/app/NotificationCompatJellybean;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v29, v0

    move-object/from16 v31, v29

    check-cast v31, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-object/from16 v30, v31

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    move/from16 v21, v0

    move-object/from16 v0, v30

    iget-object v12, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v30

    iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1, v12, v11}, Landroid/support/v4/app/NotificationCompatJellybean;->addBigTextStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 163
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompatJellybean;->build()Landroid/app/Notification;

    move-result-object v9

    return-object v9

    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v29, v0

    move-object/from16 v33, v29

    check-cast v33, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-object/from16 v32, v33

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    move/from16 v21, v0

    move-object/from16 v0, v32

    iget-object v12, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v7, v0, v1, v12, v2}, Landroid/support/v4/app/NotificationCompatJellybean;->addInboxStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v29, v0

    move-object/from16 v35, v29

    check-cast v35, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-object/from16 v34, v35

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z

    move/from16 v21, v0

    move-object/from16 v0, v34

    iget-object v12, v0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryText:Ljava/lang/CharSequence;

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    move/from16 v20, v0

    move-object v0, v7

    move-object/from16 v1, v23

    move/from16 v2, v21

    move-object v3, v12

    move-object/from16 v4, v17

    move-object/from16 v5, v36

    move/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompatJellybean;->addBigPictureStyle(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto/16 :goto_1
.end method
