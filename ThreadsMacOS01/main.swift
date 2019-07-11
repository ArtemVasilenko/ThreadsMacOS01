import Foundation

var thread = pthread_t(bitPattern: 0) //нулевой поток
var atr = pthread_attr_t() //атрибут для потока

pthread_attr_init(&atr) //указатель на атрибут в области памяти

pthread_create(&thread, &atr, { (pointer) -> UnsafeMutableRawPointer? in
    print("testOK")
    
    for i in 0...10000000000 {
        if i % 100_000 == 0 {
            print(i)
        }
    }
    print("???")
    
    return nil
}, nil) //создание потока

//readLine()

var nstread = Thread {
    
    for i in 0...1000000000 {
        if i % 100_000 == 0 {
            print("ku-ku")
        }
    }
}

nstread.start()
nstread.cancel()
nstread.isMainThread

Thread.setThreadPriority(<#T##p: Double##Double#>)
