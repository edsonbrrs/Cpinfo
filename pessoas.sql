USE [CadastroDePessoas]
GO
/****** Object:  Table [dbo].[Pessoas]    Script Date: 29/10/2019 17:25:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pessoas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ativo] [bit] NOT NULL,
	[idade] [int] NULL,
	[nome] [varchar](50) NOT NULL,
	[cpf] [varchar](14) NOT NULL,
 CONSTRAINT [PK_Pessoas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
