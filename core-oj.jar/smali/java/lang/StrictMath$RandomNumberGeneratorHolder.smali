.class final Ljava/lang/StrictMath$RandomNumberGeneratorHolder;
.super Ljava/lang/Object;
.source "StrictMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StrictMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomNumberGeneratorHolder"
.end annotation


# static fields
.field static final randomNumberGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/lang/StrictMath$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
