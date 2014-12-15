\chapter{Radial Migration of Binary Systems} \label{sec:Radial}

\section{Mass Segregation}

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


 \section{Binary Segregation}

 Binary systems are more massive, on average, than a single star, and should therefore experience mass segregation as well. This has been observationally confirmed for several globular and open clusters \citep[e.g.,][]{2012AJ....144...54G, 2012AA...540A..16M}. Similar analyses, using the two-band detection method (\S\ref{sec:twoBand}), have been conducted on the young ($15-30$ Myr), massive cluster NGC 1818, located in the Large Magellanic Cloud (LMC), producing conflicting results.

 The first analysis of NGC 1818 binaries, published in \citet{1998MNRAS.300..857E}, showed a binary fraction that decreases with radius, consistent with the cluster undergoing mass segregation even within its short lifespan. Later, however, in \citet{2013ApJ...765....4D} (and improved upon in \citet{2013MNRAS.436.1497L}), detected binaries produced a completely opposite results: a binary fraction that \emph{increased} with radius; the opposite of mass segregation. Reproduced plots from both papers are shown in figure \ref{fig:ngc1818}.

\begin{figure} \centering
\includegraphics[trim = 0mm 85mm 0mm 0mm, clip, width=0.48\textwidth]{../plots/eps/elson.eps}
\includegraphics[trim = 0mm 85mm 0mm 0mm, clip, width=0.48\textwidth]{../plots/eps/degrijs.eps}
\caption[Previous NGC 1818 results]{\emph{Left:} Reproduction of figure 4 in \citet{1998MNRAS.300..857E}. \emph{Right:} Reproduction of figure 3 in \citet{2013ApJ...765....4D}. Note that \citeauthor{2013ApJ...765....4D}'s results are cumulative binary fractions. \label{fig:ngc1818}}
\end{figure}

Following the release of these conflicting observations, N-Body simulations of a young, massive cluster were published in \citet{2013ApJ...779...30G}. \citeauthor{2013ApJ...779...30G} found that the radial binary distributions of clusters are not always mass segregated, but instead evolve through a series of qualitatively different phases, best illustrated by figure 2 of their paper, reproduced here in figure \ref{fig:nbody_n1818}.

\begin{figure} \centering
\includegraphics[width=0.38\textwidth]{../plots/jpg/nbody_n1818.png}
\caption[N-Body simulation binary radial profiles]{Reproduction of figure 2 in \citet{2013ApJ...779...30G}, showing binary fraction ($f_b$) as a function of radius for various cluster ages. $t_{rh}(0)$ is the initial half mass relaxation time of the cluster, and $r_h(0)$ is the initial half-mass radius. \label{fig:nbody_n1818}}
\end{figure}

Two of the three ``axes'' of figure \ref{fig:nbody_n1818}, radius and time, are quoted as multiples of intrinsic cluster parameters: the half mass relaxation time ($t_{rh}(0)$, and initial half-mass radius $r_h(0)$. The relaxation time of a cluster is the time it takes for a single star in the cluster to be significantly perturbed by the other stars in the cluster, most often being defined by a significant change in the star's initial velocity. The half-mass radius is more straightforward: it is the radius within which half the cluster's mass is contained.

$t_{rh}(0)$ and $r_h(0)$ are non-observable quantities, and therefore results from the open clusters in the analysis set cannot be translated onto the same scale. The cluster ages shown in figure \ref{fig:nbody_n1818} are valid only for a cluster of NGC 1818's mass; less massive clusters will have different relaxation timescales. However, each panel of figure \ref{fig:nbody_n1818} represents a qualitatively different binary distribution, and illustrates the dynamical processes happening within the evolving cluster:

\begin{itemize}
\item Initially the cluster binary fraction is isotropic, as there is no physical reason to create a higher density of binaries in a particular area of the cluster.

\item There are two ``dynamical'' types of binaries: hard and soft. Hard binaries are systems where the internal energy of the binary orbit is much greater than the kinetic energy of the system through the cluster; in other words, they have a close orbit. Soft binaries are the opposite: with large orbits, the internal energy of the system is much less than the motion of the system through the cluster. Hard and soft binaries react very differently to interactions: hard binaries tighten their orbits and become ``harder,'' while soft binaries lose internal energy and become ``softer'' \citep{1975MNRAS.173..729H}.

Due to the higher density within the core of the cluster, there is a higher frequency of interactions. Within a short amount of time (5.4 Myr in the simulations), nearly all the soft binaries within the core of the cluster have been disrupted, while those on the edges of the cluster may still be intact. This forms the ``reverse mass segregation'' distribution that was observed by \citeauthor{2013ApJ...765....4D}.

\item This same distribution persists until around $1 t_{rh}(0)$, when enough interactions have happened in the core of the cluster to begin the mass segregation process. The large arrow in the panels of figure \ref{fig:nbody_n1818} indicates the interface between regions within, which have undergone mass segregation, and those which are still unsegregated.

\item Around $6 t_{rh}(0)$, the entire cluster has become mass segregated, and the familiar binary ratio distribution is revealed.
\end{itemize}

\noindent The \citet{2013ApJ...765....4D} results indicate a cluster whose age is $< 1 t_{th}(0)$, which is supported by the cluster's $15-30$ Myr age and \citeauthor{2013ApJ...779...30G}'s N-Body simulation results. The question still remains: how did two independent studies arrive to different results about the same cluster? We will use \binocs results from our open cluster analysis set to produce similar binary radial profiles for a range of cluster ages. Using this age range, the discrepancy between NGC 1818 studies can be reconciled.


\section{BINOCS Radial Profiles} \label{sec:binaryProfiles}

The \binocs code was run on all of the clusters in the analysis set, and the resulting binary / single determinations were used to create binary radial distributions of each open cluster. To do this, stars were first sorted according to their distance from the cluster center. Then, stars were separated into bins containing a specified number of stars, and the binary fraction and average radius from the cluster center for this bin were calculated. The number of stars in each bin was chosen to maximize the signal-to-noise of the binary fraction calculation by including as many stars as possible, while still preserving the radial resolution. To account for uncertainties in multiplicity determinations, the \binocs code was run 10 times for each cluster, and an average binary fraction for each bin was determined using all 10 runs. An uncertainty on the binary fraction was computed using the standard deviation between the results of all 10 runs.

\begin{figure} \centering
\includegraphics[trim = 0mm 0mm 0mm 0mm, clip, width=0.8\textwidth]{../plots/eps/radial_all.eps}
\parbox{0.82\textwidth}{\caption[\binocs derived binary radial distributions for all clusters]{Binary radial distributions for all clusters in the analysis set. Radii have been normalized by the $r_{cl}$ values listed in each plot. \label{fig:radial_all}}}
\end{figure}

Radial profiles for all 5 clusters in the analysis set are shown in figure \ref{fig:radial_all}. To account for the variation in cluster size and mass, radii are normalized to put all clusters on a common system. The progression of radial distributions with cluster age in figure \ref{fig:radial_all} follows qualitatively with the results of the N-Body simulation in figure \ref{fig:nbody_n1818}. Young clusters, such as M36 and M35, have mostly increasing binary fraction with radius, while the old clusters NGC 2420 and M67 have general decreasing binary fraction with radius.

Both \citet{1998MNRAS.300..857E} and \citet{2013ApJ...765....4D} employed two-band detection, which is only effective within a small mass window in NGC 1818. In their paper, \citeauthor{2013ApJ...765....4D} admit that outside of this small mass region ``...the CMD is too steep to easily disentangle single from binary stars and blends. In addition, toward fainter magnitudes, photometric errors start to dominate any potential physical differences...'' With \textsc{binocs}, the entire mass range of the cluster can be explored, which can lead to useful insights. For each cluster, binary radial distributions were computed for each of the classical \emph{stellar spectral classes}. Mass ranges for each of the spectral classes considered are shown in table \ref{tab:spectralClass}.

\begin{table} \centering
\begin{tabular}{|cc|} \hline
Spectral Class & Mass Range (M$_\odot$) \\ \hline
A & 1.6 - 2.5 \\
F & 1.1 - 1.6 \\
G & 0.8 - 1.1 \\
K & 0.2 - 0.8 \\ \hline
\end{tabular}
\caption[Spectral class mass ranges]{Spectral class mass ranges considered in this work. \label{tab:spectralClass}}
\end{table}


\subsection{NGC 1960 (M36)}

\begin{figure} \centering
\includegraphics[trim = 0mm 70mm 0mm 0mm, clip, width=0.8\textwidth]{../plots/eps/radial_m36.eps}
\caption[\binocs binary radial distributions in M36]{Binary radial distributions for various spectral classes in M36. \label{fig:radial_m36}}
\end{figure}

Binary radial distributions for young open cluster M36 (30 Myr), as well as for individual spectral classes within the cluster, are shown in figure \ref{fig:radial_m35}. The overall binary distribution of M36, as well as those for A- and F-class stars, matches closely to that of a young, un-segregated cluster. Except for the most centrally located bin, binary percentage slowly increases with radius. Overall, M36 appears to validate the results of \citet{2013ApJ...765....4D}, with young clusters exhibiting an increasing binary fraction with radius.


\subsection{NGC 2168 (M35)}

\begin{figure} \centering
\includegraphics[trim = 0mm 70mm 0mm 0mm, clip, width=0.8\textwidth]{../plots/eps/radial_m35.eps}
\caption[\binocs binary radial distributions in M35]{Binary radial distributions for various spectral classes in M35. \label{fig:radial_m35}}
\end{figure}

The cluster M35 is slightly older than M36, and the radial distributions shown in figure \ref{fig:radial_m35} follow this fact. While a majority of the distributions still have increasing binary fraction with radius, there is a clear central area where stars have become mass segregated, with a much more prominent peak at the center than in M36. As in M36, the overall binary distribution matches very closely to the single mass range distributions.


\subsection{NGC 2099 (M37)}

\begin{figure} \centering
\includegraphics[trim = 0mm 35mm 0mm 0mm, clip, width=0.8\textwidth]{../plots/eps/radial_m37.eps}
\caption[\binocs binary radial distributions in M37]{Binary radial distributions for various spectral classes in M37. \label{fig:radial_m37}}
\end{figure}

Binary distributions for M37, which is even more evolved than M36 and M35, is shown in figure \ref{fig:radial_m37}. \citet{2001AJ....122.3239K} determined the relaxation time of M37 to be $\sim 300$ Myr, giving M37 an age of 2.33 $t_{rh}(0)$, which qualitatively matches with the overall M37 distribution as determined by \textsc{binocs}. The individual mass ranges, however, show varying distributions.

The A-class star distribution matches more closely to a 3 $t_{rh}(0)$ distribution, with the central concetration of binaries higher than that on the edge. The F-class star distribution is slightly younger, matching a 2 $t_{rh}(0)$ distribution, with the edge binary frequency matching that of the central region. Lastly, the G-class star distribution matches much more closely to the distributions seen in M36 and M35. A majority of the G-class star distribution has increasing binary frequency with radius.


\subsection{NGC 2420}

\begin{figure} \centering
\includegraphics[trim = 0mm 70mm 0mm 0mm, clip, width=0.8\textwidth]{../plots/eps/radial_n2420.eps}
\caption[\binocs binary radial distributions in NGC 2420]{Binary radial distributions for various spectral classes in NGC 2420. \label{fig:radial_n2420}}
\end{figure}

The cluster NGC 2420 is much older (2 Gyr) than the previous clusters. The \textsc{binocs}-derived binary distributions for NGC 2420 are shown in figure \ref{fig:radial_n2420}. After 2 Gyr, the cluster is mostly mass segregated, with binary fraction largely decreasing with radius. There is a break in the trend around 2.5 pc from the cluster center, which may be attributable to external forces, rather than internal ones being focused on in younger clusters.

As described in \S\ref{sec:introClusters}, gravitational ``collisions'' with other large masses can strip away stars on the edges of open clusters. Due to the higher average mass of binary systems, these tidal forces preferrentially strip away single stars, raising the average binary percentage within affected areas. Stars beyond 2.5 pc from the cluster center may have experienced tidal stripping events, which raised the overall binary percentage of the outer regions, while leaving the decreasing trend with radius in place.


\subsection{M67}

\begin{figure} \centering
\includegraphics[trim = 0mm 40mm 0mm 0mm, clip, width=0.8\textwidth]{../plots/eps/radial_m67.eps}
\caption[\binocs binary radial distributions in M67]{Binary radial distributions for various spectral classes in M67. \label{fig:radial_m67}}
\end{figure}

After a lifetime of 3.5 Gyr, all of M67's stars should be mass segregated, but the radial distribution plots in figure \ref{fig:radial_m67} do not mirror that fact. F and K stars show general decreasing trends with radius, but G stars show a distribution more similar to that of M35. It appears that after enough tidal stripping events, the equipartition of energy which causes up mass segregation has been completely disrupted. While M67 anchors the old edge of the analysis sample, it has been too compromised from its original form to yield any insights into binary migration.


\section{Comparison to NGC 1818}

The new \binocs binary radial distributions can compared to those derived from the two NGC 1818 publications. The individual A-, F- and G-class star distributions from M37 are compared to the results of \citet{1998MNRAS.300..857E} and \citet{2013ApJ...765....4D} in figure \ref{fig:m37_comparison}. To inter-compare the results from two clusters with different sizes, the x-axes have been scaled to multiples of cluster's core radius: 2 pc for NGC 1818, and 2.3 pc for M37 \citep{2001AJ....122.3239K}. Similarly, the overall binary percentages are different between the clusters, and necessitates scaling along the y-axis. This is done in an arbitrary way, and the scaling factors are indicated in each plot's legend.

\begin{figure} \centering
\includegraphics[trim = 0mm 80mm 0mm 0mm, clip, width=0.48\textwidth]{../plots/eps/elson_m37.eps}
\includegraphics[trim = 0mm 80mm 0mm 0mm, clip, width=0.48\textwidth]{../plots/eps/degrijs_m37.eps}
\caption[Comparison of \binocs results in M37 to NGC 1818]{Comparison of \textsc{binocs}-derived M37 binary distributions (grey) to that of NGC 1818 (black). \emph{Left:} Comparison to figure 4 of \citet{1998MNRAS.300..857E}. \emph{Right:} Comparison to figure 3 of \citet{2013ApJ...765....4D}. \label{fig:m37_comparison}}
\end{figure}

In addition to scaling, the plots for NGC 1818 were not sampled in the same way as those in \S\ref{sec:binaryProfiles}. To match \citeauthor{1998MNRAS.300..857E}'s results, binary percentages were re-computed for M37 in 0.88 pc-wide bins to match the data from the original figure. Similarly, \emph{cumulative} binary percentages were computed for M37 in steps of 1 pc to match the original figure in \citet{2013ApJ...765....4D}.

In the left-hand panel of figure \ref{fig:m37_comparison}, while none of the M37 distributions match exactly, the A- and F-class star distributions seem to have the right shape. Additionally, looking at figure \ref{fig:nbody_n1818}, the barrier between inner regions, where binaries are mass segregated, and outer regions where they are not, moves outward with time. It would appear that the NGC 1818 stars studied by \citet{1998MNRAS.300..857E} are ``older'' than those in M37. Importantly, however, the \citeauthor{1998MNRAS.300..857E} binary distribution does not match M37's G-class star distribution.

Oppositely, \citet{2013ApJ...765....4D}'s binary distribution \emph{does} match M37's G-class star distribution in the right hand panel of figure \ref{fig:m37_comparison}, but not the distribution of A- or F-class stars. While all three distributions match the outer parts of the cluster (where the cumulative fraction is nearly constant), the dip in the inner regions is only reproduced M37's G-class stars.

While the results of \citet{1998MNRAS.300..857E} and \citet{2013ApJ...765....4D} indicate that NGC 1818 is non-uniform, the above results show NGC 1818 is not unique. If only A-class stars were studied in M37, one may conclude that the cluster has some mass segregation, whereas if only G-class stars were studied, the conclusion would be that there is no cluster mass segregation at all.


\section{Discussion}

The M37 results illustrate a critical point: for a cluster where all stars have a common \emph{chronological} age, each mass range may have a different \emph{dynamical} age. This is not unexpected, as the gravitational interaction cross-section should increase with increasing stellar mass. More massive stars should therefore experience a higher frequency of interactions, leading to quicker energy transfer and mass segregation. With M37 as a quide, NGC 1818's results need not conflict: the 2 -- 5.5 M$_\odot$ stars studied by \citeauthor{1998MNRAS.300..857E} may have had enough time in NGC 1818's $\sim$ 30 Myr lifespan to have become completely mass segregated, while the 1.3 -- 1.6 M$_\odot$ stars analyzed by \citeauthor{2013ApJ...765....4D} have not.

While clusters are often treated as uniform objects, it is obvious from this analysis that ensemble properties cannot always be assumed. Binary migration, and perhaps mass segregation for single stars as well, seems to happen on varying timescales depending on mass. It will be important for N-body simulations to model these varying timescales, and assess how they might affect cluster dynamics.

