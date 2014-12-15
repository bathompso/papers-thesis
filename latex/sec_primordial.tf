\chapter{Primordial Binary Systems} \label{sec:Primordial}

Open clusters are important due to the fact that a vast majority of stars are formed within an open cluster, and later ejected into the galactic stellar population. The best way to study this ejection phenomena is via N-Body simulations. In one such simulation, \citet{2013MNRAS.434.2509M}, the binary fraction of a simulated cluster was varied from 0 to 70\%, and the timing and frequency of ejections were recorded. \citeauthor{2013MNRAS.434.2509M} concluded that the binary population had little effect, as the number of ejected stars and timescale on which ejection occured remained nearly constant, regardless of cluster binary fraction.

In the simulations, \citeauthor{2013MNRAS.434.2509M} assumed an initial uniform mass-ratio binary distribution. This assumption was used due to simplicity and ignorance; none of the current binary detection methods can produce accurate enough mass information to explore the initial cluster binary mass distribution. The \binocs method will produce these accurate mass determinations, allowing us to rigorously test these assumptions. For this analysis, only clusters with ages less than 500 Myr --- reasonable models of initial cluster conditions --- were considered.


\section{Binary Distribution} \label{sec:primordialDistribution}

To explore the distribution of binary parameters within a cluster, the \binocs results are grouped into bins in primary mass and mass ratio. Bubble plots, where the size of the bubble is related to the proportion of stars in the bin, are shown for M36, M35, and M37 in figures \ref{fig:distribution_m36}, \ref{fig:distribution_m35}, and \ref{fig:distribution_m37}. In the left hand panel of the figures, the bubble sizes are related to the percentage of stars in the bin compared to the \emph{entire} cluster. As low-mass systems are much more common than high-mass ones, it is difficult to determine the \emph{relative} distribution of mass ratios for high primary masses. In the right-hand panels of the figures, each percentage has been normalized to the total number of stars with the same primary mass.

In all clusters, the mid-IR photometry does not extend fully to low-mass stars, and therefore not all stars will be detected in those mass ranges. The distribution of these stars are ignored in the analysis, and are colored grey in the associated figures.

\begin{figure} \centering
\includegraphics[width=0.8\textwidth, trim= 0mm 103mm 0mm 0mm, clip]{../plots/eps/distribution_m36.eps}
\caption[Binary distribution in M36]{Distribution of binary system parameters in M36. Bubble sizes are for qualitative comparison only; they are consistent within each panel, but not comparable between absolute and normalized cases. Grey bubbles are systems within a magnitude range where photometry is incomplete. \label{fig:distribution_m36}}
\end{figure}

\begin{figure} \centering
\includegraphics[width=0.8\textwidth, trim= 0mm 103mm 0mm 0mm, clip]{../plots/eps/distribution_m35.eps}
\caption[Binary distribution in M35]{Same as figure \ref{fig:distribution_m36}, but for M35. \label{fig:distribution_m35}}
\end{figure}

\begin{figure} \centering
\includegraphics[width=0.8\textwidth, trim= 0mm 103mm 0mm 0mm, clip]{../plots/eps/distribution_m37.eps}
\caption[Binary distribution in M37]{Same as figure \ref{fig:distribution_m36}, but for M37. \label{fig:distribution_m37}}
\end{figure}

\section{Mass Ratio Distribution}

While the mass distribution plots are helpful in visualizing the data, we must qualitatively analyze the mass-ratio distribution to determine how much it deviates from uniform. To do this, we compute the inter-quartile range of mass ratio percentages for each primary mass. The IQRs are displayed as percent differences, using:

\begin{equation}
\text{\% IQR} = \frac{(75^{th} \text{ percentile}) - (25^{th} \text{ percentile})}{75^{th} \text{ percentile}}
\end{equation}

\begin{table} \centering
\begin{tabular}{|c|ccc|} \hline
Primary & \multicolumn{3}{c|}{\% IQR} \\ 
Mass (M$_\odot$) & M36 & M35 & M37 \\ \hline \hline
0.6 & 40 & 20 & 40 \\
0.9 & 55 & 38 & 28 \\
1.2 & 67 & 31 & 33 \\
1.5 & 68 & 48 & 44 \\
1.8 & 12 & 82 & 80 \\
2.1 & 35 & 56 & 69 \\
2.4 & 58 & 33 & 45 \\
2.7 & 50 & 43 & 25 \\ \hline
\end{tabular}
\caption[Mass ratio distribution analysis]{Percent changes in IQR of binary mass ratio bin percentages. \label{tab:massratioIQR}}
\end{table}

IQR percentages are displayed for each cluster and primary mass in table \ref{tab:massratioIQR}. While figures \ref{fig:distribution_m36} - \ref{fig:distribution_m37} show fairly uniform bubble sizes, the IQR percentages indicate that the distribution is highly inhomogeneous. The lowest IQR percentage is a 12\% difference, with most primary masses having a 30\%$+$ IQR spread.

For a large range of primary masses, between 1.4 - 2.4 M$_\odot$, low mass ratio systems are much more prevalent than high mass ones. Due to the fact that the difference in number of systems for each mass ratio is so large, cluster N-Body simulations must be re-run to analyze what affect this may have on ejection results.

Similarly, these binary population distributions can be created for older clusters, such as NGC 2420 and M67, and be compared to N-Body simulations with comparable ages. This will allow for benchmarking of binary creation and destruction processes, highlighting whether specific mass ratios are preferentially destroyed through cluster dynamical evolution.


\section{High-Mass Binary Formation} \label{sec:primordialFormation}

The M36 mass distribution is erratic for systems with primary masses greater than 2.8 M$_\odot$. Similarly, the full range of mass ratios seen for lower-mass stars disappears for systems with primary masses greater than 2.8 M$_\odot$ in M35 and 2.6 M$_\odot$ in M37.

This clumping indicates that there may be only a few specific avenues for the formation of high-mass binary systems in open clusters. The \binocs results do not provide information on these underlying phenomena, but voids in the mass-mass ratio distribution may be due to instabilities in the proto-binary formation process. For example, the stellar formation timescales for high-mass, low mass ratio systems may differ enough such that stellar winds from the primary star disrupt the formation of the lower mass companion. For primordial high-mass, high mass ratio systems, gravitational interaction between the protostars may cause them to merge before full stellar formation.

While all three clusters in the sample display a similar clumping for high-mass stars, the allowed mass ratios are different for each cluster. In M36, mass ratios of 0.3 and 0.6 are allowed, while 0.4 and 0.7 are allowed in M35 and only 0.8 mass ratio systems are allowed in M37. The difference in allowed mass ratios may be related to cluster metallicity, which is known to alter stellar formation processes \citep{2004ARA&A..42...79B}; M35 has sub-solar metallicity, with [Fe/H] = -0.21, while M37 is super-solar with [Fe/H] = +0.08.

Stellar and binary formation is still under active investigation, and the accurate mass determinations from \binocs are a valuable way to observationally explore this question. \binocs can be used to test theoretical models of binary formation, predicting various \emph{forbidden} mass ratios for high mass systems.


