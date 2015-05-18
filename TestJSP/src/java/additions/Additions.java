package additions;
public class Additions {
    public static int NWD( int a, int b ) {
        int c;                    // Tworzymy zmienną c o typie int
        while(b != 0)             // Tworzymy pętlę działającą gdy b ≠ 0
        {
            c = a % b;              // Zmienna c przyjmuje wartość a modulo b
            a = b;                // Przypisujemy b do a
            b = c;                // Przypisujemy c do b
        }
        return a;                 // Zwracamy a, czyli żądane NWD(a,b)
    }
    public static int NWW( int a, int b ) {
        return (a * b) / NWD(a,b);
    }
}