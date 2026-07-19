texHTML = String.raw`

<h2>1.3.2 Exercise 3</h2>
<p>Let \(T\) be a tree with max degree \(\Delta\). Prove that \(T\) has at least \(\Delta\) leaves.

<p>If we remove a vertex \(x\) with degree \(\Delta\) from \(T\), we are left with a forest of \(\Delta\) connected trees. If some of these trees are single vertices, then they were leaves of \(T\). Every other tree has order 2 or more, so we know from Theorem 1.14 that these trees have at least two leaves. One of these two leaves may have been connected to \(x\) in \(T\), but not both. Thus every one of the \(\Delta\) trees in the newly created forest contributed at least one leaf to \(T\). In other words, \(T\) has at least \(\Delta\) leaves.

`;
