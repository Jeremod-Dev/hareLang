//


//tri_rapide(tableau T, entier premier, entier dernier)
//        si premier < dernier alors
//            pivot := choix_pivot(T, premier, dernier)
//            pivot := partitionner(T, premier, dernier, pivot)
//            tri_rapide(T, premier, pivot-1)
//            tri_rapide(T, pivot+1, dernier)
use fmt;

export fn main() void = {
    let tableau = [5,2,10,11,11,0,8,4,6,9];
    afficheTableau(tableau);
    triRapide(tableau,0, 9);
    afficheTableau(tableau);
};

export fn triRapide(tableau: []int, premier: int, dernier: int) void = {
    afficheTableau(tableau);
    if (premier < dernier){
        let pivot: int = choixPivot(tableau, premier, dernier);
        pivot = partitionner(tableau, premier, dernier, pivot);
        triRapide(tableau, premier, pivot-1);
        triRapide(tableau, pivot+1,dernier);
    };
};

export fn choixPivot(tableau: []int, premier: int, dernier: int) int = {
    return (premier + ((dernier - premier)/2): int)-1;
};

export fn partitionner(tableau: []int, premier: int, dernier: int, pivot: int) int={
    let temporaire: int = tableau[pivot];
    tableau[pivot] = tableau[dernier];
    tableau[dernier] = temporaire;
    let j: int = premier;
    for (let i = premier; i<=dernier-1;i+=1){
        if (tableau[i] < tableau[dernier]){
            temporaire = tableau[j];
            tableau[j] = tableau[i];
            tableau[i] = temporaire;
            j += 1;
        };
    temporaire = tableau[j];
    tableau[j] = tableau[dernier];
    tableau[dernier] = temporaire;
    };
    return j;
};

export fn afficheTableau(tableau: []int) void={
    for (let i = 0z; i < len(tableau); i+=1){
        fmt::print(tableau[i]," ")!;
    };
    fmt::println()!;
};