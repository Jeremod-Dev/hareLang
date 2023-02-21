use fmt;

export fn main() void = {
    let tableau: [_]int = [5,2,10,11,11,0,8,4,6,9];
    afficheTableau(tableau);
    triRapide(tableau,0, 9);
    afficheTableau(tableau);
};

export fn triRapide(tableau: []int, premier: int, dernier: int) void = {
    
    if (premier <= dernier){
        let pivot : int = partitionner(tableau, premier, dernier);
        triRapide(tableau, premier, pivot-1);
        triRapide(tableau, pivot+1,dernier);
    };
};

export fn partitionner(tableau: []int, premier: int, dernier: int) int={
    let pivot: int = tableau[premier];
    let pe : int = premier;
    let ge : int = dernier;
    for (true){
        if (pe == ge){
            fmt::print("ok")!;
            break;
        }else{
            if(tableau[pe+1]<= pivot){
                tableau[pe] = tableau[pe+1];
                pe = pe+1;
            }else{
                let temp : int = tableau[pe+1];
                tableau[pe+1] = tableau[ge];
                tableau[ge] = temp;
                ge = ge -1;
            };
        };
    };
    fmt::print("ok2")!;
    afficheTableau(tableau);
    tableau[ge] = pivot;
    return pivot;
};

export fn afficheTableau(tableau: []int) void ={
    for (let i = 0z; i < len(tableau); i+=1){
        fmt::print(tableau[i]," ")!;
    };
    fmt::println()!;
};