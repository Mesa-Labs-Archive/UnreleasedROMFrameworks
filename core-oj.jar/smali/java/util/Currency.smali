.class public final Ljava/util/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static available:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static instances:Ljava/util/concurrent/ConcurrentMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2326cb5a6ee56e1L


# instance fields
.field private final currencyCode:Ljava/lang/String;

.field private final transient icuCurrency:Landroid/icu/util/Currency;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Landroid/icu/util/Currency;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public static getAvailableCurrencies()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation

    const-class v6, Ljava/util/Currency;

    monitor-enter v6

    :try_start_0
    sget-object v5, Ljava/util/Currency;->available:Ljava/util/HashSet;

    if-nez v5, :cond_1

    invoke-static {}, Landroid/icu/util/Currency;->getAvailableCurrencies()Ljava/util/Set;

    move-result-object v1

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Currency;

    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Currency;

    invoke-direct {v0, v2}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    sget-object v5, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    iget-object v7, v0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-interface {v5, v7, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v5, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1
    monitor-exit v6

    sget-object v5, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    return-object v4
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/util/Currency;
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Currency;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v4

    :cond_1
    new-instance v0, Ljava/util/Currency;

    invoke-direct {v0, v1}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    sget-object v3, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Currency;

    if-eqz v2, :cond_2

    :goto_0
    return-object v2

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Currency;
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "EURO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "HK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "PREEURO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Llibcore/icu/ICU;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported ISO 3166 country: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "XXX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    return-object v6

    :cond_4
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    return-object v4
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .locals 2

    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "XXX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v1, v0}, Landroid/icu/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCode()I
    .locals 1

    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getNumericCode()I

    move-result v0

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0, p1}, Landroid/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
