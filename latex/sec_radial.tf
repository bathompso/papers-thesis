\section{Radial Migration of Binary Systems}


\subsection{Mass Segregation}

When an interstellar gas cloud is shocked, and begins to collapse into an open cluster, there is no physical process which causes different regions to produce different types of stars. This means that there should be a uniform \emph{number density} of a certain mass range of star throughout the primordial cluster. Star clusters are \emph{pressure supported}, meaning that the further out the star is formed, the higher its total energy. As stars are randomly distributed without the cluster, this means that all ranges of stellar masses have the same velocity distribution.

Within the cluster, stars interact gravitationally, and energy is transferred. In any such gravitational ``collision,'' the total energy of the two-body system must be the same before and after the collision:

\begin{equation}
\frac{1}{2}m_1 v_{1i}^2 + \frac{1}{2}m_2 v_{2i}^2 = \frac{1}{2}m_1 v_{1f}^2 + \frac{1}{2}m_2 v_{2f}^2 
\end{equation}

Here, the number subscripts refer to star 1 or star 2 in the collision, and subscripts $_i$ and $_f$ refer to initial and final states, respectively. Simplifying gives:

\begin{equation}
(v_{2f}^2 - v_{2i}^2) = - \frac{m_1}{m_2} (v_{1f}^2 - v_{1i}^2)
\end{equation}

The increase in the square of the velocity of one star is proportional to the \emph{descrease} in the square of the velocity for the other star, as energy is transferred between them. Additionally, the magnitude of the transfer is dependent upon the ratio of the masses of the two stars. The more massive star will always get less of a boost than a smaller star.

Over time, these preferential transfers lead to an equipartition of energy within the cluster. When the kinetic energy of all stars are uniform:

\begin{equation}
KE = \kappa = \frac{1}{2}mv^2 \to v = \sqrt{2\kappa/m}
\end{equation}

 Less massive stars will have higher velocities than more massive ones. Due to the pressure supported nature of the cluster, stars with lower velocities will be not be able to reach further radii from the cluster center, and will appear more centrally concentrated. This phenomenon, known as \emph{mass segregation}, has been observed in many open clusters.


 \subsection{Binary Segregation}

 Binary systems are more massive, on average, than a single star, and should therefore experience mass segregation as well. This has been observationally confirmed for several globular and open clusters \citep[e.g.,][]{2012AJ....144...54G, 2012AA...540A..16M}. Similar analyses, using the two-band detection method (\S\ref{sec:twoBand}), have been conducted on the young ($15-30$ Myr), massive cluster NGC 1818, located in the Large Magellanic Cloud (LMC), producing conflicting results.

 The first analysis of NGC 1818 binaries, published in \citet{1998MNRAS.300..857E}, showed a binary fraction that decreases with radius, consistent with the cluster undergoing mass segregation even within its short lifespan. Later, however, in \citet{2013ApJ...765....4D} (and improved upon in \citet{2013MNRAS.436.1497L}), detected binaries produced a completely opposite results: a binary fraction that \emph{increased} with radius; the opposite of mass segregation. Reproduced plots from both papers are shown in figure \ref{fig:ngc1818}.

\begin{figure} \centering
\includegraphics[trim = 0mm 85mm 0mm 0mm, clip, width=0.48\textwidth]{../plots/eps/elson.eps}
\includegraphics[trim = 0mm 85mm 0mm 0mm, clip, width=0.48\textwidth]{../plots/eps/degrijs.eps}
\caption{\emph{Left:} Reproduction of figure 4 in \citet{1998MNRAS.300..857E}. \emph{Right:} Reproduction of figure 3 in \citet{2013ApJ...765....4D}. Note that \citeauthor{2013ApJ...765....4D}'s results are cumulative binary fractions. \label{fig:ngc1818}}
\end{figure}

Following the release of these conflicting observations, N-Body simulations of a young, massive cluster were published in \citet{2013ApJ...779...30G}. \citeauthor{2013ApJ...779...30G} found that the radial binary distributions of clusters are not always mass segregated, but instead evolve through a series of qualitatively different phases, best illustrated by figure 2 of their paper, reproduced here in figure \ref{fig:nbody_n1818}.

\begin{figure} \centering
\includegraphics[width=0.38\textwidth]{../plots/jpg/nbody_n1818.png}
\caption{Reproduction of figure 2 in \citet{2013ApJ...779...30G}, showing binary fraction ($f_b$) as a function of radius for various cluster ages. $t_{rh}(0)$ is the initial half mass relaxation time of the cluster, and $r_h(0)$ is the initial half-mass radius. \label{fig:nbody_n1818}}
\end{figure}

The two of the three ``axes'' of figure \ref{fig:nbody_n1818}, radius and time, are quoted as multiples of intrinsic cluster parameters: the half mass relaxation time ($t_{rh}(0)$, and initial half-mass radius $r_h(0)$. The relaxation time of a cluster is the time it takes for a single star in the cluster to be significantly perturbed by the other stars in the cluster, most often being defined by a significant change in the star's initial velocity. The half-mass radius is more straightforward: it is the radius within which half the cluster's mass is contained.

$t_{rh}(0)$ and $r_h(0)$ are non-observable quantities, and therefore results from the open clusters in the analysis set cannot be translated onto the same scale. The cluster ages shown in figure \ref{fig:nbody_n1818} are valid only for a cluster of NGC 1818's mass; less massive clusters will have different relaxation timescales. However, each panel of figure \ref{fig:nbody_n1818} represents a qualitatively different binary distribution, and illustrates the dynamical processes happening within the evolving cluster:

\begin{itemize}
\item Initially the cluster binary fraction is isotropic, as there is no physical reason to create a higher density of binaries in a particular area of the cluster.

\item There are two ``dynamical'' types of binaries: hard and soft. Hard binaries are systems where the internal energy of the binary orbit is much greater than the kinetic energy of the system through the cluster; in other words, they have a close orbit. Soft binaries are the opposite: with large orbits, the internal energy of the system is much less than the motion of the system through the cluster. Hard and soft binaries react very differently to interactions: hard binaries tighten their orbits and become ``harder,'' while soft binaries lose internal energy and become ``softer'' \citep{1975MNRAS.173..729H}.

Due to the higher density within the core of the cluster, there is a higher frequency of interactions. Within a short amount of time (5.4 Myr in the simulations), nearly all the soft binaries within the core of the cluster have been disrupted, while those on the edges of the cluster may still be intact. This forms the ``reverse mass segregation'' distribution that was observed by \citep{2013ApJ...765....4D}.

\item This same distribution persists until around $1 t_{rh}(0)$, when enough interactions have happened in the core of the cluster to begin the mass segregation process. The large arrow in the panels of figure \ref{fig:nbody_n1818} indicates the interface between regions within, which have undergone mass segregation, and those which are still unsegregated.

\item Around $6 t_{rh}(0)$, the entire cluster has become mass segregated, and the familiar binary ratio distribution is revealed.
\end{itemize}

\noindent The \citet{2013ApJ...765....4D} results indicate a cluster whose age is $< 1 t_{th}(0)$, which is supported by the cluster's $15-30$ Myr age and \citeauthor{2013ApJ...779...30G}'s N-Body simulation results. The question still remains: how did two independent studies arrive to different results about the same cluster? We will use \binocs results from our open cluster analysis set to produce similar binary radial profiles for a range of cluster ages. Using this age range, the discrepancy between NGC 1818 studies can be reconciled.


\subsection{Binary Radial Profiles}

The \binocs code was run on all of the clusters in the analysis set, and the resulting binary / single determinations were used to create binary radial distributions of each open cluster. To do this, stars were first sorted according to their distance from the cluster center. Then, stars were separated into bins containing a specified number of stars, and the binary fraction and average radius from the cluster center for this bin were calculated. The number of stars in each bin was chosen to maximize the signal-to-noise of the binary fraction calculation by including as many stars as possible, while still preserving the radial resolution. To account for uncertainties in multiplicity determinations, the \binocs code was run 10 times for each clusters, and an average binary fraction for each bin was determined using all 10 runs. An uncertainty on the binary fraction was computed using the standard deviation between the results of all 10 runs.

\begin{figure} \centering
\includegraphics[trim = 0mm 5mm 0mm 0mm, clip, width=0.8\textwidth]{../plots/eps/radial_all.eps}
\parbox{0.82\textwidth}{\caption{Binary radial distributions for all clusters in the analysis set. Arrow marks the first datapoint where the binary fraction increases, indicating a shift between mass segregated stars and not. \label{fig:radial_all}}}
\end{figure}

Radial profiles for all 5 clusters in the analysis set are shown in figure \ref{fig:radial_all}. To account for the variation in cluster size and mass, radii are normalized to put all clusters on a common system. For each system, the first datapoint where the binary fraction increases --- indicative of the interface between mass segregation and not --- is marked with an arrow. As was seen in the \citeauthor{2013ApJ...779...30G} N-Body simulations, this interface location shifts outward with cluster age. Overall, the \binocs results seem to be consistent with the N-Body simulations.

Both \citet{1998MNRAS.300..857E} and \citet{2013ApJ...765....4D} employed two-band detection, which is only effective within a small mass window in NGC 1818. In their paper, \citeauthor{2013ApJ...765....4D} admit that outside of this small mass region ``...the CMD is too steep to easily disentangle single from binary stars and blends. In addition, toward fainter magnitudes, photometric errors start to dominate any potential physical differences...'' 

With \textsc{binocs}, the entire mass range of the cluster can be explored, which can lead to useful insights. For each cluster, binary radial distributions were computed for each of the classical \emph{spectral classes}. Mass ranges for each of the spectral classes considered are shown in table \ref{tab:spectralClass}.

\begin{table} \centering
\begin{tabular}{|cc|} \hline
Spectral Class & Mass Range (M$_\odot$) \\ \hline
A & 1.6 - 2.5 \\
F & 1.1 - 1.6 \\
G & 0.8 - 1.1 \\
K & 0.2 - 0.8 \\ \hline
\end{tabular}
\caption{Spectral class mass ranges considered in this work. \label{tab:spectralClass}}
\end{table}


\subsubsection{NGC 2168 (M35)}

\begin{figure} \centering
\includegraphics[trim = 0mm 40mm 0mm 0mm, clip, width=0.8\textwidth]{../plots/eps/radial_m35.eps}
\caption{Binary radial distributions for various spectral classes in M35. \label{fig:radial_m35}}
\end{figure}

Binary radial distriutions for young open cluster M35 (130 Myr), as well as for individual spectral classes within the cluster, are shown in figure \ref{fig:radial_m35}. The overall binary distribution of M35, as well as those for F and G-class stars, matches qualitatively to a cluster with an age of $1 t_{rh}(0)$. There is a very small region of stars which appear to be mass segregated, beyond which the majority of the cluster still looks unsegregated.

M35's A-class star distribution is much more erratic, and does not conform to any of the qualitative shapes in figure \ref{fig:nbody_n1818}. With only 80 A-class stars in M35, the plot begins to suffer from variation due to low number statistics. Overall, however, M35 appears to have a uniform cluster age of $1 t_{rh}(0)$ across all mass ranges.


\subsubsection{NGC 2682 (M67)}

\begin{figure} \centering
\includegraphics[trim = 0mm 40mm 0mm 0mm, clip, width=0.8\textwidth]{../plots/eps/radial_m67.eps}
\caption{Binary radial distributions for various spectral classes in M67. \label{fig:radial_m67}}
\end{figure}














