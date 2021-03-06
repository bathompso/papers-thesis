\chapter{Summary \& Future Work}

\begin{table} \centering \scriptsize
\begin{tabular}{|l|ccc|cc|} \hline
Cluster & RV Members 	& RV Binaries 	& Double-Lined & \binocs Members & \binocs Binaries \\ \hline \hline
NGC 188 & 473 			& 78 			& 15			& 405			& 180 \\ 
NGC 2168 & 360			& 136			& 24			& 258			& 1366 \\
NGC 2682 & 524			& 88			& 4				& 642			& 285 \\
NGC 6819 & 479			& 41			& 15			& 541			& 371 \\ \hline
\end{tabular}
\caption[Comparison of classified stars in RV studies to \binocs]{Comparison of number of stars considered in RV studies to number of stars classified in \binocs. Only double-lined RV binaries will have mass information. The \binocs routine provides mass estimates on an order of magnitude or more stars than RV surveys. \label{tab:nstars}}
\end{table}

The \binocs method is a significant improvement over current binary detection techniques; requiring an order of magnitude less time, generating mass estimates on an order of magnitude more stars, and enabling quantitative exploration of faint binary systems, which are unreachable by RV studies. Table \ref{tab:nstars} denotes the number of stars classified in RV surveys as compared to those for \binocs. Only double-lined binary systems will have mass estimates, meaning only a handful of systems in all 4 clusters cna be used for N-body simulation inputs. The \binocs routine, on the other hand, provides mass estimates on more than an order of magnitude more binaries in each cluster, providing the statistics necessary for N-body inputs.

The \binocs method allows for robust, quick binary classification that will become especially powerful as new all-sky surveys are released. The \binocs code was tested to ensure it produced reasonable results for binary detection and mass determination, when compared to previously-published studies based on multi-decade RV work.

Overall binary fractions were computed quickly using \binocs for several clusters in the targeted dataset. Trends were quantified in binary fraction with respect to age, metallicity and Galactic radius. \binocs results were then applied to the previously conflicted studies of binary star distributions in NGC 1818, and were used to show that different massed systems evolve dynamically with different timescales, which has only recently been confirmed by N-body simulations.

In addition, and necessary to developing these findings, this project has built a comprehensive photometric library on four open clusters, and added deep, wide-field near-IR photometry to four others. This additional open cluster photometry will enable a wide variety of explorations from the astronomical community on these fundamental objects.

Future work for the \binocs project focuses on applying the insights gleaned from the \binocs results back to simulation:

\begin{itemize}
\item \textbf{Modeling binary radial distributions after external collisions.} In \S\ref{sec:binaryProfiles}, binary radial distributions for the young clusters M36, M35 and M37 matched nicely to the N-Body simulations results from \citet{2013ApJ...779...30G}. Older clusters, such as NGC 2420 and M67 do not match perfectly to the simulation results, and the difference was posited to be due to external forces which disrupt the outer regions of the cluster. The simulations in \citet{2013ApJ...779...30G} model the galaxy as a single point source, ignoring tidal effect from spiral arms or other large masses. Rerunning the simulations to include these tidal events may more accurately model observed old open clusters.

\item \textbf{Running simulations with accurate starting binary populations.} The assumption of a uniform mass ratio distribution in numerical simulations such as \citet{2013MNRAS.434.2509M} is not representative of realistic clusters. The \binocs code can provide empirical initial conditions from the young clusters in the analysis sample: M36, M35, and M37. Recomputing ejection frequencies and related variables for clusters with the observed mass ratio distribution may produce different conclusions.

\item \textbf{Benchmarking simulations using evolved open clusters.} \binocs data for evolved clusters, such as NGC 2420 and M67 could be compared to N-Body simulations to check accuracy. Running simulations with realistic starting conditions for these clusters should be able to match the observed binary population. By applying \binocs to clusters with various ages and metallicities, N-Body simulations of cluster evolution can be rigorously tested.

\item \textbf{Expanding global binary fraction trend datasets.} The 16 clusters in the targeting sample were chosen to overlap with specific high-impact, publicly-available datasets to facilitate detailed binary population studies, like the one in \S\ref{sec:Radial}. However, the \binocs code can quickly generate global binary fractions for nearly any cluster which has complete photometry, and as mentioned in \S\ref{sec:Results}, the trends in binary fraction with metallicity and Galactic radius would be vastly enhanced by this expansion. The LSST survey will provide all-sky coverage in optical wavelengths, providing deep optical data for any cluster. Combined with 2MASS and WISE, any nearby open cluster could be a candidate for inclusion in the analysis of \S\ref{sec:Results}.
\end{itemize}
