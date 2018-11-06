.class final Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;
.super Ljava/lang/Object;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FilterAggregator"
.end annotation


# instance fields
.field private final mFilterLock:Ljava/lang/Object;

.field private mFilterResult:I

.field private mNumPendingFilters:I

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterLock:Ljava/lang/Object;

    iput p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    return-void
.end method

.method private combine(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    return-void
.end method


# virtual methods
.method onFilterComplete(I)V
    .locals 5

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->combine(I)V

    iget v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->-get0(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;->onFilterComplete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method
