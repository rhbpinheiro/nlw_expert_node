-- CreateTable
CREATE TABLE "Vote" (
    "id" SERIAL NOT NULL,
    "sessinId" TEXT NOT NULL,
    "pollOptionId" TEXT NOT NULL,
    "pollId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Vote_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Vote_sessinId_pollId_key" ON "Vote"("sessinId", "pollId");

-- AddForeignKey
ALTER TABLE "Vote" ADD CONSTRAINT "Vote_pollId_fkey" FOREIGN KEY ("pollId") REFERENCES "Poll"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vote" ADD CONSTRAINT "Vote_pollOptionId_fkey" FOREIGN KEY ("pollOptionId") REFERENCES "PollOption"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
