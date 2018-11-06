.class public Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProductFeatures"
.end annotation


# static fields
.field public static final COLOR_CODE_BLOSSOM_PINK:Ljava/lang/String; = "di"

.field public static final COLOR_CODE_BLUE:Ljava/lang/String; = "zb"

.field public static final COLOR_CODE_BURGUNDY_RED:Ljava/lang/String; = "zr"

.field public static final COLOR_CODE_ORCHID_GREY:Ljava/lang/String; = "zv"

.field public static final COLOR_CODE_PURPLE:Ljava/lang/String; = "zp"

.field public static final COLOR_CODE_WHITE:Ljava/lang/String; = "zw"

.field public static final PRODUCT_ASTARQLTE:Ljava/lang/String; = "astarqltechn"

.field public static final PRODUCT_GREAT:Ljava/lang/String; = "great"

.field public static final PRODUCT_J4LTE:Ljava/lang/String; = "j4lte"

.field public static final PRODUCT_J6LTE:Ljava/lang/String; = "j6lte"

.field public static final PRODUCT_J8Y18LTE:Ljava/lang/String; = "j8y18lte"

.field public static final PRODUCT_STAR:Ljava/lang/String; = "star"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->isGreat()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "di"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "zv"

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->isStar()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "zr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "zp"

    return-object v0

    :cond_3
    const-string/jumbo v0, "zb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->isJ4lte()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->isJ6lte()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->isJ8y18lte()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const-string/jumbo v0, "zv"

    return-object v0

    :cond_5
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->isAStarqlte()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "zp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "zw"

    return-object v0

    :cond_6
    return-object p0
.end method

.method public static getProductInfo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.build.flavor"

    const-string/jumbo v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.build.product"

    const-string/jumbo v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isAStarqlte()Z
    .locals 2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "astarqltechn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isGreat()Z
    .locals 2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "great"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isJ4lte()Z
    .locals 2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j4lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isJ6lte()Z
    .locals 2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j6lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isJ8y18lte()Z
    .locals 2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "j8y18lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isStar()Z
    .locals 2

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "star"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
