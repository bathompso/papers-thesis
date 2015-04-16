\chapter{BINOCS Results} \label{sec:Results}

After validating the \binocs code, it can begin to be applied to the clusters in the analysis set with the requisite photometry. The \binocs code was run on each of the 8 clusters available for this analysis (see table \ref{tab:analysis}), and the overall binary fraction was recorded. A table of clusters, their parameters, and the associated overall binary percentage is shown in table \ref{tab:overallfbin}.

\begin{table} \centering \scriptsize
\begin{tabular}{|l|cccccc|} \hline
				 & \textbf{Binary}	 & \textbf{Age}		& 					& \textbf{R$_{gc}$}	& \textbf{Number of}	& \textbf{Mass} \\
\textbf{Cluster} & \textbf{Fraction} & \textbf{(Gyr)}   & \textbf{[Fe/H]}	& \textbf{(kpc)} 	& \textbf{Members}		& \textbf{Range (M$_\odot$)} \\ \hline
NGC 188			 & 0.44 			 & 6.3  			& -0.02				& 9.54				& 405  					& 0.80 - 1.14 \\
NGC 1960 (M36)	 & 0.66 			 & 0.03 			& ...  				& 9.81				& 941  					& 0.65 - 6.46 \\
NGC 2099 (M37)	 & 0.48 			 & 0.35 			& +0.08				& 9.88				& 1632 					& 0.32 - 3.21 \\
NGC 2158		 & 0.49 			 & 1.1  			& -0.23				& 13.56				& 266  					& 1.00 - 1.98 \\
NGC 2168 (M35)	 & 0.61 			 & 0.13 			& -0.21				& 9.37				& 2258 					& 0.55 - 3.19 \\
NGC 2420		 & 0.41 			 & 2.0  			& -0.23				& 10.81				& 748  					& 0.35 - 1.63 \\
NGC 2682 (M67)	 & 0.44 			 & 3.5  			& +0.01				& 9.11				& 642  					& 0.19 - 1.40 \\
NGC 6791		 & 0.39 			 & 8.0  			& +0.38				& 8.11				& 524  					& 0.89 - 1.16 \\ \hline
\end{tabular}
\caption[Overall binary fractions for analyzed clusters]{Overall binary fractions for the 8 clusters considered in this analysis. \label{tab:overallfbin}}
\end{table}

\section{Binary Fraction Versus Age}

\begin{figure} \centering
\includegraphics[width=0.7\textwidth, trim= 0mm 133mm 60mm 0mm, clip]{../plots/eps/binary_distribution.eps}
\parbox{0.8\textwidth}{\caption[Binary fraction versus cluster age]{Overall cluster binary fraction, as a function of cluster age. Uncertainties are from Poisson counting statistics. \label{fig:fbinvage}}}
\end{figure}

One of the main science questions of this work is how the binary population of a cluster evolves over time. The trend of overall binary fraction with cluster age is shown in figure \ref{fig:fbinvage}. Overall, there seems to be a decreasing trend with age. Gravitational interactions between stars can easily disrupt some binary systems, while creating binaries from two single stars is much less common. It appears the majority of binary disruption occurs quickly during the first 200 Myr of a cluster's lifetime, after which the binary fraction becomes fairly constant.

After about 200 Myr, the binary fraction stabilizes to around 0.42, which is slightly higher than the measured binary percentage of 0.33 for field stars \citep{2009AAS...21333004R}. This small difference may be attributable to the fact that during the strong gravitational interaction which could eject a cluster binary system into the field population, the binary system may also be disrupted. Without a better understanding of the ejection processes of binary systems, the overall binary fraction of cluster and field stars cannot be easily compared.

Completing an analysis such as the one in figure \ref{fig:fbinvage} using only RV surveys could take centuries to build up enough analysis clusters to produce any useful insights. Two-band analysis, though fast, is dominated by degeneracies, and is limited to small magnitude ranges across the main sequence. With new, deep photometric surveys becoming available (UKIDSS, LSST), more clusters could be added to the list with minimal effort using the \binocs code. Generating the plot in figure \ref{fig:fbinvage} using hundreds of open clusters would yield significant insights into the true distribution of binary fractions.

\section{Binary Fraction Versus Metallicity}

\begin{figure} \centering
\includegraphics[width=0.7\textwidth, trim= 0mm 69mm 60mm 69mm, clip]{../plots/eps/binary_distribution.eps}
\parbox{0.8\textwidth}{\caption[Binary fraction versus cluster metallicity]{Overall cluster binary fraction, as a function of cluster [Fe/H]. Uncertainties are from Poisson counting statistics. \label{fig:fbinvfeh}}}
\end{figure}

It is not well-understood how differences in metallicity of a pre-cluster cloud may affect the formation of binary systems. The distribution of binary fractions as a function of metallicity is shown in figure \ref{fig:fbinvfeh}. There are only 7 clusters shown in figure \ref{fig:fbinvfeh} due to the fact that M36 does not have a published metallicity value.

It is clear from figure \ref{fig:fbinvfeh} that any observed trend will be dominated by the contribution from NGC 6791, at [Fe/H] $= +0.38$. Without this metallicity outlier, there is hardly any trend in binary fraction. The absence of a trend is still significant: the metallicity of a primordial cluster may have no effect on the binary population, at least on the aggregate level. This insight could be important for initial conditions of numerical simulations.

Similarly to the distribution with age, more data points can be added to this plot with minimal effort when new deep photometry becomes available. Filling in the remainder of the metallicity range will give more insight into whether a trend exists or not. Additionally, with a much larger number of clusters, binary fraction can be modeled as a function of both metallicity \emph{and} age. 

\section{Binary Fraction Versus Galactocentric Radius}

\begin{figure} \centering
\includegraphics[width=0.7\textwidth, trim= 0mm 8mm 60mm 133mm, clip]{../plots/eps/binary_distribution.eps}
\parbox{0.8\textwidth}{\caption[Binary fraction versus cluster R$_{gc}$]{Overall cluster binary fraction, as a function of cluster R$_{gc}$. Uncertainties are from Poisson counting statistics. \label{fig:fbinvrgc}}}
\end{figure}

The above two comparisons have linked binary fraction to intrinsic cluster parameters, but clusters are not isolated systems, and the galactic environment plays a large part in cluster evolution. Clusters that are born near the center of the Galaxy experience a higher rate of tidal stripping events and other interactions which may alter the binary population. Figure \ref{fig:fbinvrgc} shows the overall binary fraction of clusters as a function of galactocentric radius (R$_{gc}$; the distance the cluster is from the center of the galaxy).

In figure \ref{fig:fbinvrgc}, any observed trend is dominated by the two very young clusters, and thus high binary fraction, in the sample. Removing these two data points, a slight increasing trend with radius is observed. This would indicate that the gravitational shocking experienced at lower Galactic radii cause more binaries to be destroyed or ejected. However, NGC 2158, with a R$_{gc}$ of 13.5, is a high leverage point; its removal would result in there being no trend in R$_{gc}$. Additionally, the most central cluster is NGC 6791, with an age of 8 Gyr, while NGC 2158 has an age of 1.1 Gyr, an age difference which may explain the trend without R$_{gc}$.

As with the metallicity comparison, more clusters are needed to fill in the gaps in R$_{gc}$, disentangle correlations with age, and determine whether a trend truly exists. A more complete figure \ref{fig:fbinvrgc} would allow the exploration of cluster-environment interactions, and would inform cluster simulations on the correct treatment of tidal stripping events and other gravitational collisions. \\

Now that the global trends in open cluster binary populations have been quantified, more detailed problems can be undertaken. Using the \binocs results for 4 of the clusters with complete, deep photometry, a conflict in the understanding of internal cluster dynamics can be reconciled.




