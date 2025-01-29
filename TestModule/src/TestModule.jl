"""
    @__MODULE__

This module collects several useful functions to deal with vectors.
"""
module TestModule

export Vec, testsum

using StaticArrays

const T = Int8
const N = 4

"""
    const Vec = SVector{$N,$T}

This is the vector type used by $(@__MODULE__).
"""
const Vec = SVector{N,T}

"""
    testsum(v::Vec) -> $T

Returns the sum of the elements in `v`. There is no check for overflow!

See also [`Vec`](@ref).

# Examples
```julia
julia> v = Vec([1, 2, 3]); testsum(v)
6
julia> v = Vec(1:20); testsum(v)
-46
```
"""
function testsum(v::Vec)
    s = zero(T)
    for x in v
        s += x
    end
    return s
end

end # module
