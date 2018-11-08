.class Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;
.super Ljava/lang/Object;
.source "BackgroundScanScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/BackgroundScanScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BucketList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;
    }
.end annotation


# instance fields
.field private mActiveBucketCount:I

.field private final mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

.field private final mTimePeriodSortComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList$1;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mTimePeriodSortComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get2()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    iput-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    return-void
.end method

.method public get(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getActiveCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    return v0
.end method

.method public getActiveRegularBucketCount()I
    .locals 1

    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    return v0
.end method

.method public getOrCreate(I)Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;
    .locals 3

    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v0, v1, p1

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mActiveBucketCount:I

    new-instance v0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->this$0:Lcom/android/server/wifi/scanner/BackgroundScanScheduler;

    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get2()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;-><init>(Lcom/android/server/wifi/scanner/BackgroundScanScheduler;I)V

    iget-object v1, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method public getSortedActiveRegularBucketList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/wifi/scanner/BackgroundScanScheduler;->-get0()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mTimePeriodSortComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public isActive(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/scanner/BackgroundScanScheduler$BucketList;->mBuckets:[Lcom/android/server/wifi/scanner/BackgroundScanScheduler$Bucket;

    array-length v0, v0

    return v0
.end method
