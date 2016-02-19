module TestRandom
    using Base.Test
    using befwm

    @test_throws AssertionError nichemodel(10, 150)
    
    A = nichemodel(10, 20)
    @test size(A, 1) == 10
    @test size(A, 2) == 10

    A = nichemodel(10, 0.12)
    @test size(A, 1) == 10
    @test size(A, 2) == 10

    A = [0 1; 1 0]
    @test befwm.connectance(A) == 0.5

end