\chapter{Summary \& Future Work}

The \binocs method is a marked improvement over current binary detection techniques, measuring accurate component masses of binary systems which allow for quantitative exploration of open cluster dynamics. The \binocs code was tested to ensure it produced reasonable results for binary detection and mass determination, when compared to previously-published studies.

\binocs results were applied to the previously conflicted studies of NGC 1818, and were used to show that different massed systems evolve dynamically with different timescales. Next, the \binocs results from three young open clusters were used to construct the primordial binary distribution, which was found to differ significantly from the previously-assumed uniform mass ratio distribution. Lastly, the \binocs results from young clusters have indicated that there are forbidden mass ratios for high-mass systems.

Separate from the goal of the \binocs code, this project has built a comprehensive photometric library on five open clusters, and added deep, wide-field near-IR photometry to four others. This additional open cluster photometry will enable a wide variety of explorations from the astronomical community on these fundamental objects.

Future work for the \binocs project focuses on applying the insights gleaned from the \binocs results back to simulation:

\begin{itemize}
\item \textbf{Modeling binary radial distributions after external collisions.} In \S\ref{sec:binaryProfiles}, binary radial distributions for the young clusters M36, M35 and M37 matched nicely to the N-Body simulations results from \citet{2013ApJ...779...30G}. Older clusters, such as NGC 2420 and M67 do not match perfectly to the simulation results, and the difference was posited to be due to external forces which disrupt the outer regions of the cluster. The simulations in \citet{2013ApJ...779...30G} model the galaxy as a single point source, ignoring tidal effect from spiral arms or other large masses. Rerunning the simulations to include these tidal events may more accurately model observed old open clusters.

\item \textbf{Running simulations with accurate starting binary populations.} As detailed in \S\ref{sec:primordialDistribution}, the assumption of a uniform mass ratio distribution in \citet{2013MNRAS.434.2509M} is not representative of realistic clusters. Recomputing ejection frequencies and related variables for clusters with the observed uneven mass ratio distribution may produce different conclusions.

\item \textbf{Benchmarking simulations using evolved open clusters.} As mentioned at the end of \S\ref{sec:primordialDistribution}, \binocs data for evolved clusters, such as NGC 2420 and M67 could be compared to N-Body simulations to check accuracy. Running simulations with realistic starting conditions for these clusters should be able to match the observed binary population. By applying \binocs to clusters with various ages and metallicities, N-Body simulations of cluster evolution can be rigorously tested.

\item \textbf{Comparing \textsc{binocs} results to models of stellar formation.} Stellar and binary formation is still under active investigation, but \binocs results from young open clusters have yielded some insights into formation mechanisms. In \S\ref{sec:primordialFormation}, it was observed that the young open clusters in the sample only contain specific mass ratios for high mass systems. If stellar formation simulations predict that these types of binary systems should be allowed to form, it may point to incomplete data within the formation models.
\end{itemize}
