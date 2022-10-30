use fmt;

export fn main() void = {
    let tableau = [5,2,10,11,11,0,8,4,6,9];
    afficheTableau(tableau);
    trieABulle(tableau);
    afficheTableau(tableau);
};

export fn trieABulle(tableau: []int) void ={
    let temporaire = 0;
    for (let i = len(tableau); 1 <= i; i-=1){
        for (let j = 0z; j<i-1;j+=1 ){
            if (tableau[j+1] < tableau[j]){
                temporaire = tableau[j];
                tableau[j] = tableau[j+1];
                tableau[j+1] = temporaire;
            };
        };
    };
};
export fn afficheTableau(tableau: []int) void={
    for (let i = 0z; i < len(tableau); i+=1){
        fmt::print(tableau[i]," ")!;
    };
    fmt::println()!;
};