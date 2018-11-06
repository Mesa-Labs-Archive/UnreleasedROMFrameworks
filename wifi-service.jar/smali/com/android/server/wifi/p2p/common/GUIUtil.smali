.class public Lcom/android/server/wifi/p2p/common/GUIUtil;
.super Ljava/lang/Object;
.source "GUIUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "GUIUtil"

.field private static volatile mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v9, -0x50506

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v8, 0x2

    int-to-float v10, v10

    div-int/lit8 v11, v8, 0x2

    int-to-float v11, v11

    invoke-virtual {v3, v9, v10, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v8, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_0
    return-object v6

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v9

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    throw v9
.end method

.method public static getContactImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 32

    const/16 v27, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v6, "_id"

    const/4 v8, 0x0

    aput-object v6, v17, v8

    const-string/jumbo v6, "display_name"

    const/4 v8, 0x1

    aput-object v6, v17, v8

    const-string/jumbo v6, "lookup"

    const/4 v8, 0x2

    aput-object v6, v17, v8

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v4, :cond_12

    sget-object v6, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v8, "photo_uri"

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    move-object/from16 v8, v17

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    const/16 v30, 0x0

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v6, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v30, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;

    const/4 v6, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/wifi/p2p/common/DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    if-eqz v27, :cond_a

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "photo_uri"

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_4

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v27, :cond_1

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v16, :cond_3

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    return-object v6

    :catch_0
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_4
    if-eqz v30, :cond_7

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v30

    move-wide/from16 v1, v24

    invoke-static {v6, v0, v1, v2}, Lcom/android/server/wifi/p2p/common/GUIUtil;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/server/wifi/p2p/common/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    if-eqz v26, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1050400

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/common/Util;->dpTopx(Landroid/content/Context;I)I

    move-result v20

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v6, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/p2p/common/Util;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    if-eqz v27, :cond_5

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v15

    :cond_7
    const/4 v6, 0x0

    if-eqz v27, :cond_8

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v18, :cond_9

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v6

    :cond_a
    if-eqz v30, :cond_d

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v30

    move-wide/from16 v1, v24

    invoke-static {v6, v0, v1, v2}, Lcom/android/server/wifi/p2p/common/GUIUtil;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/server/wifi/p2p/common/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    if-eqz v26, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1050400

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/common/Util;->dpTopx(Landroid/content/Context;I)I

    move-result v20

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v6, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static/range {v26 .. v26}, Lcom/android/server/wifi/p2p/common/Util;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v15

    if-eqz v27, :cond_b

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v18, :cond_c

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object v15

    :cond_d
    const/4 v6, 0x0

    if-eqz v27, :cond_e

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v18, :cond_f

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_f
    return-object v6

    :catch_1
    move-exception v22

    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v27, :cond_10

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v18, :cond_11

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v16, :cond_12

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_12
    :goto_1
    const/4 v6, 0x0

    return-object v6

    :catch_2
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v27, :cond_13

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v18, :cond_14

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_14
    if-eqz v16, :cond_15

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_15
    :goto_2
    throw v6

    :catch_3
    move-exception v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "display_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v6

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static getDefaultAvatar(Landroid/content/res/Resources;ZZZJ)Landroid/graphics/drawable/Drawable;
    .locals 8

    const-wide/16 v6, 0x5

    rem-long v6, p4, v6

    long-to-int v2, v6

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const v5, 0x1080297

    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {p4, p5}, Lcom/android/server/wifi/p2p/common/Util;->getDefaultPhotoBackgroundColor(J)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v3, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->setAntiAlias(Z)V

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v6}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz p3, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/server/wifi/p2p/common/Util;->getCornerRadius(Landroid/content/res/Resources;I)F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/p2p/common/StrokeRoundedBitmapDrawable;->setCornerRadius(F)V

    :cond_0
    return-object v3

    :cond_1
    const v5, 0x1080298

    goto :goto_0
.end method

.method public static getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/server/wifi/p2p/common/DefaultImageRequest;J)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getIconBackground(III)Landroid/graphics/Bitmap;
    .locals 6

    mul-int/lit8 v3, p0, 0x2

    mul-int/lit8 v4, p0, 0x2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, p0

    int-to-float v4, p0

    int-to-float v5, p1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/wifi/p2p/common/GUIUtil;
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/server/wifi/p2p/common/GUIUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/p2p/common/GUIUtil;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/common/GUIUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/wifi/p2p/common/GUIUtil;->mInstance:Lcom/android/server/wifi/p2p/common/GUIUtil;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getValueFromAttr(Landroid/content/Context;[I)I
    .locals 6

    const/4 v3, 0x0

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    :try_start_0
    iget v4, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHorizentalDisplay(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
