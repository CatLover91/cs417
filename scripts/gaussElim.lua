for k = 1, min(m,n) do
    --Find the k-th pivot:
    i_max = argmax (i = k ... m, abs(A[i, k]))
    if A[i_max, k] = 0
        error "Matrix is singular!"
    end
    swap rows(k, i_max)
    --Do for all rows below pivot:
    for i = k + 1 ... m:
        --Do for all remaining elements in current row:
        for j = k + 1 ... n:
            A[i, j] = A[i, j] - A[k, j] * (A[i, k] / A[k, k])
        end
        --Fill lower triangular matrix with zeros:
        A[i, k] = 0
    end
end