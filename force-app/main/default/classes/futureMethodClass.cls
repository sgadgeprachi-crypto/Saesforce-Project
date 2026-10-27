public class futureMethodClass {
    @future
    public static void method1()
    {
        system.debug('1-in method 1');
        system.debug('2-in method 1');
        system.debug('3-in method 1');
        system.debug('4-in method 1');
        system.debug('5-in method 1');
    }
    @future
    public static void method2()
    {
        system.debug('1-in method 2');
        system.debug('2-in method 2');
        system.debug('3-in method 2');
        system.debug('4-in method 2');
        system.debug('5-in method 2');
    }
    
     public static void method3()
    {
        system.debug('1-in method 3');
        system.debug('2-in method 3');
        method1();
        system.debug('3-in method 3');
        system.debug('4-in method 3');
        method2();
        system.debug('5-in method 3');
    }


}