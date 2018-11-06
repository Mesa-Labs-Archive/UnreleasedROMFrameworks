.class final Ljava/lang/reflect/Executable$GenericInfo;
.super Ljava/lang/Object;
.source "Executable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/Executable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GenericInfo"
.end annotation


# instance fields
.field final formalTypeParameters:[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation
.end field

.field final genericExceptionTypes:Llibcore/reflect/ListOfTypes;

.field final genericParameterTypes:Llibcore/reflect/ListOfTypes;

.field final genericReturnType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llibcore/reflect/ListOfTypes;",
            "Llibcore/reflect/ListOfTypes;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/reflect/Executable$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    iput-object p2, p0, Ljava/lang/reflect/Executable$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    iput-object p3, p0, Ljava/lang/reflect/Executable$GenericInfo;->genericReturnType:Ljava/lang/reflect/Type;

    iput-object p4, p0, Ljava/lang/reflect/Executable$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    return-void
.end method
