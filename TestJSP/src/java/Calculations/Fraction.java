package Calculations;
public class Fraction {
    
    private int licznik;
    private int mianownik;
    
    public Fraction(int licznik, int mianownik) {
        if( mianownik == 0 ) {
            throw new ArithmeticException("Division by zero!");
        }
        
        this.licznik = licznik;
        this.mianownik = mianownik;
    }
    
    public int getLicznik() {
        return this.licznik;
    }
    
    public int getMianownik() {
        return this.mianownik;
    }

    @Override
    public String toString() {
        return String.valueOf(licznik) + "/" + String.valueOf(mianownik);
    }
    
    public static Fraction add(Fraction a, Fraction b) {
        int aLicznik = a.getLicznik();
        int aMianownik = a.getMianownik();
        int bLicznik = b.getLicznik();
        int bMianownik = b.getMianownik();
        
        int rMianownik;
        if( aMianownik != bMianownik ) {
            rMianownik = additions.Additions.NWW(aMianownik, bMianownik);
        }
        else {
            rMianownik = aMianownik;
        }
        int aMnoznik = rMianownik / aMianownik;
        int bMnoznik = rMianownik / bMianownik;
        int rLicznik = aMnoznik * aLicznik + bMnoznik * bLicznik;
        
        return new Fraction(rLicznik, rMianownik);
    }
    
    public static Fraction multiply(Fraction a, Fraction b) {
        return new Fraction(a.getLicznik() * b.getLicznik(), a.getMianownik() * b.getMianownik());
    }
    
    public static Fraction multiplyByNumber(int k, Fraction a) {
        return new Fraction(k * a.getLicznik(), a.getMianownik());
    }
    
    public static Fraction subtract(Fraction a, Fraction b) {
        return add(a, multiplyByNumber(-1, b));
    }
    
    public static Fraction division(Fraction a, Fraction b) {
        return new Fraction(a.getLicznik() * b.getMianownik(), a.getMianownik() * b.getLicznik());
    }
        
    public static Fraction divisionByNumber(int k, Fraction a) {
        return new Fraction(a.getLicznik(), k * a.getMianownik());
    }
    
}